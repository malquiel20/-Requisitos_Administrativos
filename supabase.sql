-- Base de datos de la página de requisitos (respuestas, preguntas del equipo y comentarios).
-- Cómo usarlo: en Supabase abre "SQL Editor" → "New query", pega todo este archivo y pulsa "Run".
-- Se puede ejecutar más de una vez sin perder datos.

create table if not exists public.entradas (
  id          uuid primary key default gen_random_uuid(),
  tipo        text not null check (tipo in ('respuesta', 'pregunta', 'comentario')),
  qid         text check (char_length(qid) <= 80),
  texto       text not null check (char_length(texto) between 1 and 2000),
  tema        text check (char_length(tema) <= 80),
  seccion     text check (char_length(seccion) <= 80),
  ref         text check (char_length(ref) <= 40),
  bloqueante  int  not null default 0 check (bloqueante in (0, 1)),
  nombre      text check (char_length(nombre) <= 60),
  clave       text not null check (char_length(clave) between 16 and 100),
  creado      timestamptz not null default now()
);

-- Cambios en los requisitos (editar, agregar, eliminar, recuperar, volver al original).
-- titulo = NOMBRE del requisito, texto = DESCRIPCIÓN, controles = CONTROLES Y RESTRICCIONES (uno por línea).
-- Cada cambio es una fila nueva: nunca se sobrescribe nada, así queda el historial.
alter table public.entradas add column if not exists req       text check (char_length(req) <= 80);
alter table public.entradas add column if not exists accion    text check (accion in ('agregar', 'editar', 'eliminar', 'recuperar', 'original'));
alter table public.entradas add column if not exists rid       text check (char_length(rid) <= 20);
alter table public.entradas add column if not exists grupo     text check (char_length(grupo) <= 80);
alter table public.entradas add column if not exists prioridad text check (prioridad in ('A', 'M', 'B'));
alter table public.entradas add column if not exists dudoso    int  not null default 0 check (dudoso in (0, 1));
alter table public.entradas add column if not exists titulo    text check (char_length(titulo) <= 150);
alter table public.entradas add column if not exists controles text check (char_length(controles) <= 4000);

alter table public.entradas drop constraint if exists entradas_tipo_check;
alter table public.entradas add constraint entradas_tipo_check
  check (tipo in ('respuesta', 'pregunta', 'comentario', 'requisito'));

-- Reglas de acceso: cualquiera con el enlace puede leer y escribir,
-- pero nadie puede leer la "clave" con la que cada navegador borra lo suyo.
alter table public.entradas enable row level security;

revoke all on public.entradas from anon, authenticated;
grant select (id, tipo, qid, texto, tema, seccion, ref, bloqueante, nombre, creado,
              req, accion, rid, grupo, prioridad, dudoso, titulo, controles)
  on public.entradas to anon, authenticated;
grant insert (tipo, qid, texto, tema, seccion, ref, bloqueante, nombre, clave,
              req, accion, rid, grupo, prioridad, dudoso, titulo, controles)
  on public.entradas to anon, authenticated;

drop policy if exists "leer" on public.entradas;
create policy "leer" on public.entradas
  for select to anon, authenticated using (true);

drop policy if exists "escribir" on public.entradas;
create policy "escribir" on public.entradas
  for insert to anon, authenticated with check (true);

-- Borrar: solo quien escribió la entrada (desde el mismo navegador).
-- Si se borra una pregunta del equipo, también se borran sus respuestas.
create or replace function public.borrar_entrada(p_id uuid, p_clave text)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
declare n int;
begin
  delete from public.entradas where id = p_id and clave = p_clave;
  get diagnostics n = row_count;
  if n > 0 then
    delete from public.entradas where qid = 't:' || p_id::text;
  end if;
  return n > 0;
end;
$$;

revoke all on function public.borrar_entrada(uuid, text) from public;
grant execute on function public.borrar_entrada(uuid, text) to anon, authenticated;
