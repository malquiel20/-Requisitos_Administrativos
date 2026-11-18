# Requisitos administrativos – Plataforma de eventos SENA Fonseca

Página de levantamiento de requisitos de la **plataforma web para la gestión integral de eventos institucionales del SENA Fonseca** (Centro Agroempresarial y Acuícola, ADSO).

**Enlace de la página:** https://malquiel20.github.io/-requisitos_administrativos/

En la página se puede:

- Leer el problema, las fases del evento, los roles y los requisitos.
- **Editar los requisitos** funcionales y no funcionales, **agregar** nuevos, eliminarlos o recuperarlos. Cada cambio queda en el historial del requisito con el nombre de quien lo hizo, y siempre se puede volver al texto original.
- **Responder las 39 preguntas** para la instructora y el equipo.
- **Agregar preguntas** nuevas.
- **Dejar comentarios** para mejorar los requisitos.

Todo lo que se escribe se guarda en una base de datos compartida (Supabase), así que todos ven lo mismo desde el mismo enlace.

## Archivos

| Archivo | Para qué sirve |
|---|---|
| `index.html` | La página que publica GitHub Pages. |
| `config.js` | Los dos datos de conexión con Supabase. |
| `supabase.sql` | El script que crea la tabla y las reglas de acceso en Supabase. |
| `descargas/` | El documento de requisitos en Markdown, Word, PDF y HTML sin conexión. |

## Puesta en marcha (una sola vez)

### 1. Activar GitHub Pages
1. En este repositorio, entra en **Settings → Pages**.
2. En **Build and deployment → Source**, elige **Deploy from a branch**.
3. En **Branch**, elige `main` y la carpeta `/ (root)`. Pulsa **Save**.
4. En uno o dos minutos la página queda en el enlace de arriba.

### 2. Crear la base de datos en Supabase
1. Entra en https://supabase.com, crea una cuenta gratuita y pulsa **New project**. Ponle un nombre (por ejemplo `requisitos-eventos`), una contraseña y la región más cercana.
2. Cuando el proyecto esté listo, abre **SQL Editor → New query**, pega todo el contenido de `supabase.sql` y pulsa **Run**. Debe decir *Success*. (Si ya lo habías ejecutado antes, ejecútalo otra vez: añade lo necesario para editar requisitos sin borrar nada.)
3. Abre **Project Settings → API** (o el botón **Connect**) y copia:
   - **Project URL** (algo como `https://abcdefghijklmn.supabase.co`)
   - la clave **publishable** o **anon public**

### 3. Conectar la página
Edita `config.js` y pega los dos datos entre las comillas de `url` y `key`. Guarda el cambio (commit) en `main`. En uno o dos minutos la página ya sincroniza.

> La clave *publishable / anon* es pública: está pensada para ir en páginas web. Lo que protege los datos son las reglas de `supabase.sql`. **Nunca** pongas la clave *secret* ni la *service_role* en este repositorio.

## Moderación
Cada persona solo puede borrar lo que escribió desde su propio navegador. El dueño del proyecto de Supabase puede borrar o corregir cualquier entrada en **Table Editor → entradas**.
