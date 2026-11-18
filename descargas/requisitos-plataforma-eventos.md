# Plataforma web para la gestión integral de eventos institucionales – SENA Fonseca

**Levantamiento de requisitos (borrador v0.3)**
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

Cada requisito tiene **ID**, **nombre**, **descripción**, **prioridad** (Alta = lo pidió la instructora, Media = importante, Baja = deseable o deducido) y sus **controles y restricciones**.

> **Nota:** los controles y restricciones son una propuesta hecha a partir del análisis de la clase; hay que validarlos con la instructora.

### 4.1 Gestión de eventos y tipologías

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-01** | **REGISTRO DE EVENTOS** | El sistema deberá permitir crear, editar, consultar y archivar eventos institucionales registrando nombre, fecha, hora de inicio y de fin, lugar, motivo, responsable y estado del evento según la fase en que se encuentre (planificación, programación, ejecución o evaluación). Al guardar, el sistema deberá mostrar el evento en el listado general con su fase actual. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el guardado del evento mientras no se hayan diligenciado el nombre, la fecha, el lugar y el responsable.<br>• El sistema impedirá registrar una fecha u hora de fin anterior a la de inicio.<br>• El sistema únicamente permitirá archivar un evento cuando haya terminado su fase de evaluación. | |
| **RF-02** | **TIPOLOGÍA DEL EVENTO** | El sistema deberá permitir clasificar cada evento según su tipología, a partir de un catálogo administrable de eventos corporativos e institucionales (lanzamiento de marca, conferencia, seminario, taller, workshop, road show, congreso, convención, charla, conversatorio, feria, entre otros). El administrador podrá agregar, modificar o desactivar tipologías del catálogo. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente permitirá seleccionar tipologías activas del catálogo.<br>• El sistema no permitirá registrar eventos de tipo social (cumpleaños, primera comunión u otros), porque no forman parte del alcance institucional.<br>• El sistema impedirá eliminar una tipología asociada a eventos registrados; solo permitirá desactivarla. | |
| **RF-03** | **OBJETIVO Y PÚBLICO DEL EVENTO** | El sistema deberá permitir registrar el objetivo del evento (lo que se espera lograr con él), sus características principales y el público objetivo al que va dirigido, como parte de la definición del evento en la fase de planificación. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el paso a la fase de programación mientras no se hayan registrado el objetivo y el público objetivo. | |
| **RF-04** | **HISTORIAL Y PLANTILLAS DE EVENTOS** | El sistema deberá permitir consultar los eventos realizados en años anteriores con toda su información (comités, plan de acción, programa, proveedores, asistencia, evaluación e informes) y duplicar un evento anterior como plantilla para organizar una nueva edición. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente permitirá duplicar eventos finalizados o archivados.<br>• Al duplicar un evento, el sistema no copiará la asistencia, las evaluaciones ni los certificados del evento original. | |
| **RF-05** | **TABLERO DE SEGUIMIENTO** | El sistema deberá mostrar un tablero de seguimiento y control con el avance de cada evento por fase, indicando las tareas pendientes, en curso y terminadas, y sus responsables. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente mostrará a cada usuario los eventos en los que participa, salvo al administrador, que verá todos. | |

### 4.2 Planificación

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-06** | **COMITÉS DEL EVENTO** | El sistema deberá permitir crear los comités de cada evento (logística, comunicaciones, académico, decoración, entre otros), definir sus funciones y asignar sus integrantes y su líder. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá la creación de un comité mientras no tenga nombre y líder asignado.<br>• El sistema impedirá asignar como integrante a una persona que no esté registrada como usuario. | |
| **RF-07** | **PLAN DE ACCIÓN** | El sistema deberá permitir construir el plan de acción del evento a partir de las funciones de cada comité: cada función genera tareas, y cada tarea cumple un objetivo y tiene un responsable y una fecha límite. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no permitirá guardar una tarea sin responsable ni fecha límite.<br>• El sistema únicamente permitirá al líder del comité y al administrador modificar las tareas de ese comité. | |
| **RF-08** | **CRONOGRAMA DE ACTIVIDADES** | El sistema deberá generar el cronograma de actividades a partir del plan de acción, mostrando las tareas ordenadas por fecha con su responsable y estado (pendiente, en curso o terminada). Por ejemplo: comité académico → buscar conferencistas → contactarlos → enviar la invitación. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema resaltará las tareas vencidas que no se hayan marcado como terminadas.<br>• El sistema impedirá marcar como terminada una tarea que dependa de otra que todavía esté pendiente. | |
| **RF-09** | **PRESUPUESTO DEL EVENTO** | El sistema deberá permitir registrar el presupuesto inicial del evento por rubros y ajustarlo a medida que aparezcan nuevos requerimientos, comparando el valor presupuestado con el valor ejecutado. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente aceptará valores numéricos positivos en los rubros.<br>• El sistema conservará el presupuesto inicial aunque se registren ajustes posteriores.<br>• El sistema avisará cuando el valor ejecutado supere el valor presupuestado. | |
| **RF-10** | **PANORAMA DE RIESGOS** | El sistema deberá permitir identificar los riesgos de cada evento con su nivel (bajo, medio o alto), las medidas de prevención y el plan alternativo, apoyándose en una lista de chequeo de seguridad y salud en el trabajo. Por ejemplo, el riesgo de inundación por lluvia en el Día del Campesino. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no permitirá registrar un riesgo de nivel alto sin medida de prevención y plan alternativo.<br>• El sistema restringirá el paso a la fase de ejecución mientras la lista de chequeo de riesgos no esté diligenciada. | |
| **RF-11** | **CONFERENCISTAS E INVITADOS ESPECIALES** | El sistema deberá permitir registrar a los conferencistas e invitados especiales con sus datos de contacto, lugar de residencia, ocupación, hoja de vida y las condiciones que solicitan para participar (transporte, hospedaje, honorarios o alimentación). | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el envío de la invitación mientras no se hayan registrado las condiciones del invitado.<br>• El sistema únicamente permitirá adjuntar la hoja de vida en formato PDF. | |
| **RF-12** | **RIDER TÉCNICO** | El sistema deberá permitir adjuntar el rider técnico de artistas o conferencistas y asociar sus requerimientos técnicos (sonido, luces, tarima, ubicación) a los requerimientos del evento. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente aceptará archivos PDF o de imagen dentro del tamaño máximo definido. | |

### 4.3 Programación

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-13** | **REQUERIMIENTOS DEL EVENTO** | El sistema deberá permitir registrar los requerimientos del evento clasificados en técnicos, de personal y financieros (mesas, manteles con el logo del SENA, sillas, computadores o tabletas, micrófonos, parlantes, refrigerios, material impreso), indicando la cantidad, el responsable y si se obtienen del centro o de un proveedor. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no permitirá guardar un requerimiento sin tipo, cantidad y responsable.<br>• El sistema sumará al presupuesto del evento los requerimientos que tengan costo. | |
| **RF-14** | **BANCO DE PROVEEDORES** | El sistema deberá contar con un banco de proveedores reutilizable entre eventos que registre el servicio que ofrece cada proveedor y lo que incluye (por ejemplo, sonido con 2 micrófonos y 3 parlantes), su costo, sus datos de contacto y los eventos en los que ha participado. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema impedirá registrar dos proveedores con el mismo NIT o número de documento.<br>• El sistema únicamente permitirá al administrador eliminar proveedores. | |
| **RF-15** | **AGENDA DEL EVENTO** | El sistema deberá permitir definir la agenda del evento con sus grandes partes: inicio y protocolo, desarrollo, y cierre y evaluación. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá la creación del programa mientras no exista la agenda. | |
| **RF-16** | **PROGRAMA DEL EVENTO** | El sistema deberá permitir detallar cada parte de la agenda en un programa con la hora y la duración de cada punto: registro, acto protocolario, oración, palabras de bienvenida, himno nacional e himno del SENA, palabras del subdirector y de los coordinadores, charlas, refrigerio y cierre. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema impedirá que dos puntos del programa se crucen en el mismo horario.<br>• El sistema avisará cuando la duración total del programa supere el horario del evento. | |
| **RF-17** | **LIBRETO DEL PRESENTADOR** | El sistema deberá generar el libreto del presentador a partir del programa y de la definición del evento (por qué se hace, para qué y cuáles son sus objetivos), con la opción de apoyarse en inteligencia artificial para redactarlo, y permitir editarlo manualmente antes de descargarlo. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente generará el libreto cuando el programa esté completo.<br>• El sistema requerirá la revisión del coordinador antes de marcar el libreto como definitivo. | |
| **RF-18** | **MINUTO A MINUTO** | El sistema deberá permitir elaborar el minuto a minuto del evento con cada acción operativa, su hora, duración, responsable y recursos, desde el día anterior (pre-evento) hasta después del evento. Por ejemplo: instalar la mesa de registro debajo del palo de mango, 20 minutos, con mesa, mantel, 3 sillas y celulares con el código QR. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no permitirá guardar una acción sin hora y responsable.<br>• El sistema avisará cuando un mismo responsable tenga dos acciones a la misma hora. | |
| **RF-19** | **SOLICITUD INTERNA DE RECURSOS** | El sistema deberá permitir generar solicitudes de recursos internos (mesas, sillas, maquinaria, espacios) dirigidas al administrador del centro, a partir de una plantilla de correo reutilizable que se completa con los datos del evento. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el envío de la solicitud mientras no se indiquen el recurso, la cantidad, la fecha y el lugar. | |
| **RF-20** | **INVENTARIO DE RECURSOS DEL CENTRO** | El sistema deberá permitir registrar el inventario de recursos del centro de formación y su ubicación (por ejemplo, las 26 mesas naranjas repartidas por distintas áreas), para saber qué hay disponible al planear un evento. **(por confirmar)** | Baja |
| | *CONTROLES Y RESTRICCIONES* | • El sistema impedirá asignar a un evento más unidades de un recurso de las que hay disponibles en el inventario. | |

### 4.4 Ejecución

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-21** | **REGISTRO DE ASISTENCIA CON QR** | El sistema deberá generar un código QR por evento que permita a los asistentes registrar su asistencia desde celulares, tabletas o computadores ingresando su nombre y número de documento. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el envío del registro mientras no se hayan diligenciado el nombre y el número de documento.<br>• El sistema impedirá registrar dos veces la asistencia del mismo documento en el mismo evento.<br>• El sistema únicamente aceptará registros dentro del horario del evento. | |
| **RF-22** | **EVIDENCIAS DE EJECUCIÓN** | El sistema deberá permitir subir evidencias de la ejecución del evento (fotografías, listas, documentos y videos) asociadas al evento o a una actividad del minuto a minuto. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente aceptará archivos de imagen, PDF o video dentro del tamaño máximo definido.<br>• El sistema registrará quién subió cada evidencia y en qué fecha. | |
| **RF-23** | **MONTAJE Y DESMONTAJE** | El sistema deberá permitir llevar una lista de chequeo del montaje y desmontaje del evento, marcando cada elemento como instalado o retirado. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el cierre del evento mientras haya elementos del desmontaje sin marcar. | |
| **RF-24** | **CONTROL EN TIEMPO REAL** | El sistema deberá permitir marcar durante el evento cada actividad del minuto a minuto como realizada o con novedad, registrando una observación cuando haya novedad. | Baja |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no permitirá marcar una actividad con novedad sin escribir la observación. | |

### 4.5 Evaluación y cierre

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-25** | **ENCUESTA DE SATISFACCIÓN CON QR** | El sistema deberá generar automáticamente, para cada evento, una encuesta de satisfacción accesible por código QR a partir de un banco de preguntas reutilizable, con escala de 1 a 5 y un espacio para comentarios, sin necesidad de crear un formulario nuevo cada vez. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema permitirá responder la encuesta una sola vez por asistente.<br>• El sistema únicamente habilitará la encuesta desde el cierre del evento hasta el plazo definido por el organizador. | |
| **RF-26** | **INFORME DE EVALUACIÓN** | El sistema deberá generar automáticamente el informe de evaluación del evento con los resultados de la encuesta (promedio por pregunta, número de respuestas y comentarios), descargable en PDF. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente generará el informe cuando la encuesta esté cerrada. | |
| **RF-27** | **EVALUACIÓN ADMINISTRATIVA** | El sistema deberá permitir al equipo organizador registrar la evaluación administrativa del evento: qué funcionó, qué no funcionó y las lecciones aprendidas para la siguiente edición. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente permitirá diligenciarla a los integrantes de los comités del evento. | |
| **RF-28** | **GENERACIÓN DE CERTIFICADOS** | El sistema deberá generar automáticamente certificados o constancias de asistencia a partir de un archivo de Excel con los nombres, números de documento, fecha y duración del evento, aplicando una plantilla de diseño institucional. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema validará que el archivo de Excel tenga las columnas requeridas antes de generar los certificados e informará las filas con errores.<br>• El sistema únicamente generará certificados para quienes tengan asistencia registrada, salvo que el organizador indique lo contrario. | |
| **RF-29** | **ENVÍO Y DESCARGA DE CERTIFICADOS** | El sistema deberá enviar los certificados por correo electrónico masivo a los asistentes y permitir que cada asistente descargue su certificado desde la plataforma ingresando su número de documento. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente mostrará a cada persona el certificado que corresponde a su número de documento.<br>• El sistema registrará los correos que no se pudieron entregar. | |
| **RF-30** | **MEMORIAS DEL EVENTO** | El sistema deberá permitir publicar las memorias del evento (presentaciones, fotografías y conclusiones) para que los asistentes las descarguen. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente publicará las memorias aprobadas por el coordinador del evento. | |
| **RF-31** | **INFORME FINAL DE EJECUCIÓN** | El sistema deberá generar el informe final de ejecución del evento con el presupuesto ejecutado, la asistencia, los resultados de la evaluación, las evidencias y las novedades, descargable en PDF. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema restringirá el archivo del evento mientras no se haya generado el informe final. | |

### 4.6 Banco de datos histórico

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RF-32** | **DIRECTORIO DE CONTACTOS** | El sistema deberá contar con un directorio de contactos reutilizable con asistentes, invitados (por ejemplo, los campesinos del Día del Campesino), evaluadores, conferencistas, proveedores y aliados (colegios y universidades), indicando en qué eventos ha participado cada uno. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema impedirá registrar dos contactos con el mismo número de documento.<br>• El sistema solicitará la autorización de tratamiento de datos personales antes de guardar un contacto. | |
| **RF-33** | **INVITACIÓN A CONTACTOS ANTERIORES** | El sistema deberá permitir seleccionar contactos de una edición anterior de un evento y enviarles la invitación a la nueva edición (por ejemplo, volver a invitar a los 22 evaluadores de la feria), registrando quién acepta y quién no. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema no enviará invitaciones a los contactos que hayan pedido no ser contactados. | |
| **RF-34** | **FERIAS DE PROYECTOS** | El sistema deberá permitir la inscripción de proyectos en ferias y la asignación de evaluadores según el número de proyectos inscritos (por ejemplo, 75 proyectos, de 7 a 10 por evaluador, en unas 2 horas). **(por confirmar)** | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema impedirá asignar a un evaluador más proyectos que el máximo definido.<br>• El sistema impedirá que un evaluador califique un proyecto en el que participa. | |
| **RF-35** | **BÚSQUEDA EN EL HISTÓRICO** | El sistema deberá permitir buscar y filtrar el histórico de eventos por tipología, año, lugar y responsable. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El sistema únicamente mostrará los resultados a los que el usuario tenga permiso de acceso. | |
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

| ID | NOMBRE | DESCRIPCIÓN | PRIORIDAD |
|---|---|---|---|
| **RNF-01** | **DISEÑO ADAPTABLE** | El sistema deberá adaptarse a pantallas de celulares, tabletas y computadores, porque el registro de asistencia por QR y las encuestas se usan desde el teléfono. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • Todas las funciones deberán poder usarse en pantallas desde 360 px de ancho sin desplazamiento horizontal. | |
| **RNF-02** | **USABILIDAD** | El sistema deberá ser fácil de usar para personas sin perfil técnico (instructores y aprendices de cualquier programa), con textos en español claro y ayudas en cada formulario. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • Las tareas principales (crear un evento, registrar asistencia, generar certificados) deberán poder completarse en pocos pasos y sin capacitación previa. | |
| **RNF-03** | **CONTINUIDAD Y RESPALDO** | El sistema deberá conservar la información de los eventos aunque cambien las personas que los organizan, con copias de seguridad periódicas. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • Se realizará una copia de seguridad automática al menos una vez por semana.<br>• Ningún usuario podrá borrar definitivamente un evento archivado. | |
| **RNF-04** | **PROTECCIÓN DE DATOS PERSONALES** | El sistema deberá cumplir la Ley 1581 de 2012 (Habeas Data), porque guarda documentos de identidad, teléfonos y correos. Requisito añadido en el análisis; la instructora no lo mencionó. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • El sistema solicitará la aceptación de la política de tratamiento de datos antes de registrar datos personales.<br>• Los números de documento solo serán visibles para los usuarios con rol de organizador o administrador. | |
| **RNF-05** | **DOCUMENTOS DESCARGABLES** | El sistema deberá permitir descargar en PDF y Excel el programa, el minuto a minuto, los informes y los certificados. | Media |
| | *CONTROLES Y RESTRICCIONES* | • Los documentos generados incluirán el logo del SENA y la fecha de generación. | |
| **RNF-06** | **CALIDAD E IMAGEN INSTITUCIONAL** | El sistema deberá alinearse con la norma ISO 9001:2015 (control de documentos y registros, mejora continua) y con el manual de imagen institucional del SENA. | Media |
| | *CONTROLES Y RESTRICCIONES* | • Todo documento generado tendrá código, versión y fecha. | |
| **RNF-07** | **SEGURIDAD Y CONTROL DE ACCESO** | El sistema deberá controlar el acceso por roles (administrador, líder de comité, integrante, presentador, asistente y directivo), mostrando a cada usuario solo las funciones que le corresponden. | Alta |
| | *CONTROLES Y RESTRICCIONES* | • Las contraseñas se guardarán cifradas.<br>• La sesión se cerrará automáticamente tras un tiempo de inactividad. | |
| **RNF-08** | **DOCUMENTACIÓN Y MANTENIBILIDAD** | El sistema deberá contar con documentación técnica y manual de usuario suficientes para que otros aprendices puedan continuar el proyecto. | Media |
| | *CONTROLES Y RESTRICCIONES* | • El código fuente estará en un repositorio con instrucciones de instalación. | |

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
