// Conexión con la base de datos compartida del equipo (Supabase).
// Pega aquí los dos datos de tu proyecto: Project Settings → API (o "Connect").
// La clave "anon" / "publishable" es pública por diseño: la protegen las reglas de supabase.sql.
// Si los dejas vacíos, la página funciona pero guarda solo en el navegador de cada persona.
window.SUPA_CONFIG = {
  url: "",  // Ej.: "https://abcdefghijklmn.supabase.co"
  key: ""   // Ej.: "sb_publishable_..." o la clave "anon public" que empieza por "eyJ..."
};
