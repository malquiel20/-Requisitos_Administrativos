# Plataforma web para la gestión integral de eventos institucionales – SENA Fonseca

**Levantamiento de requisitos (borrador v0.2)**
Fecha: 13 de noviembre de 2026
Fuentes: 3 audios de la clase con la instructora + póster de la 2ª Feria GEN-INNOVA + pizarra "Fases del proceso administrativo del evento".

> ⚠️ Los audios se transcribieron de forma automática y en varios tramos la calidad es baja (ruido del salón). Los requisitos marcados con **(¿?)** se dedujeron de frases que no se entienden del todo y hay que confirmarlos con la instructora.

---

## 1. Comparación de los audios

| Audio | Duración | Contenido |
|---|---|---|
| `WhatsApp Audio 8.12.49 AM` | 43:05 | **La grabación completa.** Incluye todo lo de los otros dos. |
| `WhatsApp Ptt 7.59.30 AM` | 39:41 | Es el **mismo contenido** que el audio de las 8:12, pero empieza unos 30 s después (no tiene la presentación "tengo 25 años de experiencia como organizadora de eventos") y se corta en el minuto 40 ("necesito hablar contigo… perdón"). |
| `WhatsApp Ptt 8.03.33 AM` | 3:15 | Es la **continuación** del audio de las 7:59 (minutos 40:18 a 43:05 del audio largo). No contiene información sobre la plataforma. |

**Conclusión:** tu sospecha era correcta. Audio de las 7:59 + audio de las 8:03 ≈ audio de las 8:12. Basta con usar el de las 8:12.

La plataforma de eventos se explica entre los **minutos 00:00 y 35:30** del audio largo, que es lo que se analiza en este documento.

---

## 2. Contexto del proyecto

### 2.1 Problema (según la instructora y el póster)
- La instructora tiene **25 años de experiencia como organizadora de eventos**. Desde 2024 apoya los eventos del centro (feria campesina, ferias por La Guajira, Día del Campesino, Feria GEN-INNOVA, conversatorios).
- **No hay un área ni una directriz clara** para organizar eventos: se le pide a cualquier instructor "organiza tal evento".
- Hoy los eventos se coordinan por **conversaciones y grupos de WhatsApp**. Eso causa pérdida de información, desorganización, tareas duplicadas y dificultad para asignar responsables.
- **El conocimiento se queda en la cabeza de las personas.** Cada año, al buscar lo que se hizo el año anterior, *no hay de dónde sacar la información*. Si la instructora se va del centro, *se lleva lo que sabe*.
- Ejemplos reales:
  - **Día del Campesino:** 700–1000 personas. Solo el último año quedó una base de datos de campesinos para volver a invitarlos.
  - **Feria GEN-INNOVA:** 75 proyectos inscritos y 22 evaluadores. Este año se amplió a colegios y universidades. Lo único que se repitió entre una edición y otra fue el departamento que la organiza y la instructora.

### 2.2 Qué se espera
- **Un sistema de información** que "funcione conmigo o sin mí", que deje **trazabilidad** de cada evento y sirva de **modelo** reutilizable (proyecto de investigación con orientación productiva, del Banco de Proyectos del centro).
- Los aprendices de **ADSO** deciden la herramienta técnica: *"¿una aplicación web, una aplicación móvil, una página, un programa? Eso lo determinamos con ustedes"*. Según el póster, la propuesta es una **plataforma web**.
- La instructora aporta el conocimiento del proceso de eventos y los aprendices la parte técnica.
- Trabajo **por equipos y por etapas** (una sugerencia de un aprendiz que la instructora aprobó).
- Tiempo disponible: **unas 3 o 4 semanas** con el grupo.
- Referentes del póster: gestión de eventos, sistemas de información, **ISO 9001:2015** y aprendizaje basado en proyectos. El equipo usa **Trello** para organizar las tareas.

### 2.3 Autores y ponentes (según el póster)
Autores: Dina Luz León Solano, Angélica Guevara, Helga Rincones, Yesica Arévalo.
Ponentes: Sharoll Yulieth Bolaño Teherán, Keidis Sorelis Ariño Prieto.
Centro Agroempresarial y Acuícola – SENA Fonseca (La Guajira).

---

## 3. Modelo del proceso (columna vertebral del sistema)

La instructora usa las etapas del **proceso administrativo** (planear, organizar, programar, controlar, ejecutar y evaluar) agrupadas en 4 fases. El **seguimiento y control es transversal** a todas. **Cada etapa tiene un requisito documental**, es decir, un documento que se genera y que permite pasar a la siguiente.

```
1. PLANIFICACIÓN ──► 2. PROGRAMACIÓN ──► 3. EJECUCIÓN (celebración) ──► 4. EVALUACIÓN
        └──────────────── Seguimiento y control en todas las etapas ────────────────┘
```

| Fase | Contenido | Documentos o entregables |
|---|---|---|
| **1. Planificación** | Definición del evento (tipología), objetivos, características, público objetivo, manual de funciones, riesgos | Ficha de definición del evento, manual de funciones (plan de acción, cronograma de actividades, presupuesto inicial), panorama de riesgos |
| **2. Programación** | Requerimientos técnicos, de personal y financieros, y timing general | Banco de proveedores, agenda, programa, libreto del presentador, minuto a minuto |
| **3. Ejecución y seguimiento** | Montaje y desmontaje, desarrollo del evento | Registro de asistencia, evidencias de ejecución |
| **4. Evaluación** | Evaluación del evento (asistentes) y evaluación administrativa (organizadores) | Informe de evaluación, memorias, certificados o constancias, informe final de ejecución |

---

## 4. Requisitos funcionales

Prioridad: **A** = imprescindible (la instructora lo pidió expresamente), **M** = importante, **B** = deseable o deducido.

### 4.1 Gestión de eventos y tipologías
| ID | Requisito | Prioridad |
|---|---|---|
| RF-01 | Crear, editar, consultar y archivar eventos con nombre, fecha, hora, lugar, motivo y estado (fase actual). | A |
| RF-02 | Clasificar el evento por **tipología**. Los eventos sociales (cumpleaños, primera comunión, etc.) no aplican; el enfoque son los **eventos corporativos o institucionales**: lanzamiento de marca, conferencia, seminario, taller, workshop, road show, congreso, convención, charla, conversatorio, feria, etc. (más de 20 tipos). El catálogo debe ser administrable. | A |
| RF-03 | Registrar el **objetivo** del evento ("¿qué tengo que lograr?"), sus **características** y el **público objetivo**. | A |
| RF-04 | **Historial de eventos:** consultar cómo se hizo un evento en años anteriores (p. ej., "Día del Campesino 2025") y **duplicarlo como plantilla** para la siguiente edición. | A |
| RF-05 | Ver el avance del evento por fase (tablero de seguimiento y control). | M |

### 4.2 Planificación
| ID | Requisito | Prioridad |
|---|---|---|
| RF-06 | **Comités del evento:** crear comités (la instructora menciona seis: logística, comunicaciones, académico, decoración y otros dos que no se entienden en el audio) con sus **funciones**. | A |
| RF-07 | **Plan de acción:** cada función genera **tareas**, cada tarea cumple un **objetivo** y tiene un **responsable**. | A |
| RF-08 | **Cronograma de actividades** generado a partir del plan de acción (fechas, responsables, estado). Ejemplo: comité académico → buscar posibles conferencistas → contactarlos → enviar la invitación. | A |
| RF-09 | **Presupuesto inicial** del evento que se pueda ajustar a medida que aparecen requerimientos (presupuesto inicial frente al ejecutado). | A |
| RF-10 | **Panorama de riesgos:** identificar riesgos (p. ej., inundación por lluvia en el Día del Campesino), su **nivel**, las medidas y un plan alternativo, con base en una **lista de chequeo** (enfoque de seguridad y salud en el trabajo). | A |
| RF-11 | **Conferencistas o invitados especiales:** datos de contacto, lugar de residencia, ocupación, hoja de vida, requisito académico o experiencial y **condiciones o contrapartidas** que piden (transporte, hospedaje, honorarios, alimentación). | A |
| RF-12 | Adjuntar el **rider técnico** de artistas o conferencistas (requerimientos técnicos). | M |

### 4.3 Programación
| ID | Requisito | Prioridad |
|---|---|---|
| RF-13 | Registrar **requerimientos** del evento clasificados en **técnicos, de personal y financieros** (p. ej., una mesa, un mantel blanco con el logo del SENA, sillas, computadores o tabletas, micrófonos, parlantes, refrigerio, material impreso). | A |
| RF-14 | **Banco de proveedores:** proveedor, servicio, lo que incluye (p. ej., "sonido con 2 micrófonos y 3 parlantes"), costo, contacto e historial de eventos en que participó. Reutilizable entre eventos. | A |
| RF-15 | **Agenda:** las grandes partes del evento (inicio y protocolo, desarrollo, cierre y evaluación). | A |
| RF-16 | **Programa:** el detalle de cada parte, con duración. P. ej., registro, acto protocolario, oración, palabras de bienvenida, himno nacional e himno del SENA, palabras del subdirector y de los coordinadores, charla, refrigerio y punto de hidratación o café, cierre. | A |
| RF-17 | **Libreto del presentador** generado a partir del programa y de la definición del evento (por qué, para qué, objetivos). La instructora menciona que hoy usan **inteligencia artificial** para redactarlo. Debe poder editarse a mano. | M |
| RF-18 | **Minuto a minuto:** cada acción operativa con hora, duración, responsable y recursos (p. ej., "instalar la mesa de registro debajo del palo de mango: 20 min, responsable X, recursos: mesa, mantel, 3 sillas, celulares con QR"). Incluye el pre-evento (día anterior), el día del evento y el post-evento. | A |
| RF-19 | **Solicitudes internas de recursos** (mesas, sillas, maquinaria, espacios) al administrador del centro, con **plantilla de correo** reutilizable, porque hoy "todas las veces hay que redactar el mismo correo". | M |
| RF-20 | **Inventario de recursos del centro** y su ubicación (p. ej., las 26 mesas naranjas repartidas por el centro). | B (¿?) |

### 4.4 Ejecución
| ID | Requisito | Prioridad |
|---|---|---|
| RF-21 | **Registro de asistencia con código QR** desde celulares, tabletas o computadores en la mesa de registro. | A |
| RF-22 | **Evidencias de ejecución:** subir fotos, listas, documentos y videos asociados al evento o a una actividad. | A |
| RF-23 | Checklist de **montaje y desmontaje**. | M |
| RF-24 | Marcar actividades del minuto a minuto como realizadas o con novedad durante el evento (control en tiempo real). | B |

### 4.5 Evaluación y cierre
| ID | Requisito | Prioridad |
|---|---|---|
| RF-25 | **Encuesta de satisfacción por QR** generada automáticamente para cada evento a partir de un **banco de preguntas** reutilizable (escala de 1 a 5 y comentarios; p. ej., "¿el evento empezó a tiempo?", "¿las sillas eran cómodas?"), sin tener que crear un formulario nuevo cada vez. | A |
| RF-26 | **Informe de evaluación** automático con los resultados de la encuesta. | A |
| RF-27 | **Evaluación administrativa** interna: cómo vivió el equipo organizador la ejecución, qué funcionó y qué no (lecciones aprendidas para la próxima edición). | A |
| RF-28 | **Certificados o constancias de asistencia:** cargar un **Excel** con nombres, documentos de identidad, fecha y duración, aplicar una **plantilla de diseño** y generar los certificados automáticamente. | A |
| RF-29 | **Envío masivo por correo** a los asistentes y **descarga del certificado desde la plataforma** (p. ej., buscando por número de documento). | A |
| RF-30 | **Memorias del evento** (presentaciones, fotos, conclusiones) descargables. | M |
| RF-31 | **Informe final de ejecución** con todo lo que pasó en el evento (presupuesto, asistencia, evaluación, evidencias, novedades). | A |

### 4.6 Banco de datos histórico (transversal)
| ID | Requisito | Prioridad |
|---|---|---|
| RF-32 | **Directorio de contactos** reutilizable: asistentes, invitados (p. ej., campesinos del Día del Campesino), **evaluadores**, conferencistas, proveedores y aliados (colegios, universidades). | A |
| RF-33 | Volver a invitar fácilmente a los contactos de una edición anterior (p. ej., a los 22 evaluadores de la feria, para buscar solo a los 5 que no puedan y no a los 22). | A |
| RF-34 | **Ferias de proyectos:** inscripción de proyectos y **asignación de evaluadores** según el número de proyectos inscritos (p. ej., 75 proyectos entre 22 evaluadores, de 7 a 10 proyectos cada uno, en unas 2 horas). | M (¿?) |
| RF-35 | Búsqueda y filtros en el histórico por tipo de evento, año, lugar y responsable. | M |

### 4.7 Usuarios y roles (deducido)
| Rol | Qué hace |
|---|---|
| Administrador o coordinador general | Crea eventos, comités y catálogos, y ve todos los informes. |
| Líder o miembro de comité | Gestiona las tareas de su comité y sube evidencias. |
| Presentador o maestro de ceremonias | Consulta el programa y el libreto. |
| Asistente o invitado | Se registra por QR, responde la encuesta y descarga su certificado (puede no necesitar cuenta). |
| Evaluador (ferias) | Ve los proyectos que le tocan y los califica (¿?). |
| Directivo (subdirector o coordinación) | Consulta informes (solo lectura). |

---

## 5. Requisitos no funcionales

| ID | Requisito |
|---|---|
| RNF-01 | **Plataforma web responsive**: el registro por QR y las encuestas se usan desde el celular. |
| RNF-02 | Fácil de usar para personas sin perfil técnico (instructores y aprendices de cualquier programa). |
| RNF-03 | **Persistencia y continuidad:** la información no puede depender de una persona; debe tener copias de seguridad. |
| RNF-04 | **Protección de datos personales** (Ley 1581 de 2012, Habeas Data): se guardan documentos de identidad, teléfonos y correos. *(Añadido por el análisis: la instructora no lo mencionó.)* |
| RNF-05 | Generación de documentos descargables (PDF, Excel) para el programa, el minuto a minuto, los informes y los certificados. |
| RNF-06 | Alineación con **ISO 9001:2015** (control de documentos y registros, mejora continua) y con la imagen institucional del SENA. |
| RNF-07 | Control de acceso por roles. |
| RNF-08 | Documentación del proyecto suficiente para que otros aprendices puedan continuarlo (póster: "documentar el proyecto para darle continuidad"). |

---

## 6. Preguntas fundamentales para la instructora y el equipo

Preguntas pendientes para cerrar los requisitos, ordenadas por importancia. Las 🔴 bloquean el diseño y hay que responderlas antes de empezar.

### 6.0 Visión y prioridades
33. ¿Qué tarea le quita más tiempo hoy cuando organiza un evento?
34. ¿Cuál es el próximo evento real del centro y en qué fecha? ¿Podría ser la primera prueba de la plataforma?
35. 🔴 Ordene las 4 fases (planificación, programación, ejecución, evaluación) de la más urgente a la menos urgente.
36. ¿Qué NO debe hacer la plataforma? Lo que queda fuera del alcance de este proyecto.
37. ¿Cuántos eventos organiza el centro al año y de qué tamaño (número de asistentes)?
38. ¿Conoce alguna herramienta que le sirva de referencia (Google Forms, Trello, Eventbrite u otra)? ¿Qué le gusta de ella?
39. Si el proyecto sale bien, ¿qué habrá cambiado dentro de un año?

### 6.1 Alcance y entrega
1. 🔴 **¿Qué debe estar funcionando al final de las 3 o 4 semanas?** ¿Un prototipo navegable, un producto mínimo con alguna fase completa o solo el diseño (requisitos, casos de uso, mockups, base de datos)?
2. 🔴 **¿Por cuál fase empezamos?** (Propuesta: certificados, encuestas QR y registro de asistencia, que es lo que más trabajo ahorra hoy.)
3. 🔴 **¿Cómo se reparten los equipos?** ¿Un equipo por fase (planificación, programación, ejecución y evaluación)? ¿Cuántos aprendices hay por equipo?
4. ¿Qué entregables académicos se piden además del software (documento de investigación, póster, presentación, manual de usuario)? ¿Hay fecha de sustentación?
5. ¿El sistema es solo para el **SENA Fonseca** o debe servir de **modelo para otros centros**?

### 6.2 Usuarios
6. 🔴 **¿Quién va a usar la plataforma día a día?** ¿Solo la instructora y su equipo, cualquier instructor al que le asignen un evento o también coordinación académica y el área de comunicaciones?
7. ¿Los **asistentes** necesitan crear una cuenta o basta con registrarse por QR (nombre y documento)?
8. ¿Los **evaluadores de la feria** califican los proyectos dentro de la plataforma o eso queda fuera del alcance?
9. ¿Quién aprueba un evento o su presupuesto antes de ejecutarlo (subdirector, coordinación)?

### 6.3 Proceso y documentos
10. 🔴 **¿Nos puede compartir los formatos que ya usa?** Manual de funciones, los **6 comités** y sus funciones (en el audio dice "yo lo tengo en documento"), formato de plan de acción, cronograma, presupuesto, panorama de riesgos, minuto a minuto, libreto y encuesta.
11. ¿Cuáles son exactamente los **6 comités**? (En el audio se entienden logística, comunicaciones, académico y decoración.)
12. ¿Cuál es la **lista de tipologías** de eventos que hay que precargar?
13. ¿El **panorama de riesgos** sigue una metodología concreta (p. ej., matriz de seguridad y salud en el trabajo o la GTC 45) con niveles de probabilidad e impacto?
14. ¿El **presupuesto** maneja dinero real del SENA (rubros, órdenes de compra) o es solo una estimación de costos?
15. Las solicitudes de recursos (mesas, sillas, maquinaria) al administrador del centro, ¿deben enviarse desde la plataforma o basta con generar el correo o la plantilla?

### 6.4 Asistencia, encuestas y certificados
16. 🔴 **¿Qué diferencia hay entre certificado y constancia?** ¿Quién los firma? ¿Llevan firma digital, logo o código de verificación?
17. ¿Qué datos exactos trae el **Excel** de asistentes? (Nombre, tipo y número de documento, correo, teléfono, ficha o programa…)
18. ¿El certificado se entrega a todos los inscritos o **solo a quienes registraron asistencia** por QR?
19. ¿Desde qué **correo** se harán los envíos masivos (institucional del SENA o una cuenta del proyecto)? ¿Cuántos correos como máximo por evento (p. ej., 1000 en el Día del Campesino)?
20. ¿Las preguntas de la **encuesta** son las mismas para todos los eventos o cambian según la tipología?
21. ¿Hay asistentes **sin celular o sin internet** (p. ej., campesinos)? ¿Hace falta registro manual o en papel que luego se digite?

### 6.5 Inteligencia artificial
22. ¿Quieren que la plataforma **genere el libreto del presentador con IA** o basta con una plantilla que se rellene con los datos del evento? (La IA implica costo y conexión a un servicio externo.)

### 6.6 Técnica e infraestructura
23. 🔴 **¿Dónde se va a alojar la plataforma?** ¿Servidor del SENA, hosting gratuito, dominio propio? ¿Quién la mantiene cuando el grupo termine la formación?
24. 🔴 **¿Qué tecnologías se han visto en la formación ADSO** y cuáles deben usarse? (Lenguaje, framework, base de datos, p. ej., PHP/Laravel, Node, Python/Django, MySQL.)
25. ¿Se debe integrar con algún sistema del SENA (Sofía Plus, correo institucional, Google Workspace o Microsoft 365)?
26. ¿Hay que **migrar datos existentes** (la base de datos de campesinos, los 22 evaluadores, eventos de 2024 y 2025)? ¿En qué formato están?
27. ¿Debe funcionar **sin conexión** durante el evento (zonas con mala señal en el centro)?

### 6.7 Datos y seguridad
28. ¿Hay una política de **tratamiento de datos personales** del SENA que debamos mostrar o aceptar en el registro?
29. ¿Cuánto tiempo deben guardarse los datos, las evidencias y los certificados?

### 6.8 Validación (metodología del póster)
30. ¿A quién aplicamos las **encuestas y entrevistas** para validar los requisitos (instructores, coordinadores, aprendices de organización de eventos)? ¿Cuántas?
31. ¿En qué **evento real** se puede probar el prototipo (p. ej., un próximo conversatorio)?
32. ¿Qué criterios usará la instructora para dar el proyecto por **aceptado**?

---

## 7. Siguientes pasos propuestos
1. Enviar las preguntas 🔴 a la instructora y recoger los formatos existentes (pregunta 10).
2. Definir el alcance del producto mínimo y repartir los equipos por fase.
3. Escribir las historias de usuario por fase en Trello a partir de los RF-01 a RF-35.
4. Diseñar el modelo de datos (evento, tipología, comité, tarea, requerimiento, proveedor, contacto, asistencia, encuesta, certificado, evidencia).
5. Hacer los mockups y validarlos con la instructora antes de programar.
