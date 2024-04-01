# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



admin_user = Client.create!(email: 'esteban@admin.com', password: 'admin123', name: "Esteban admin", phone: 666444333, role: 1) #
admin_user.pfp.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'admin-avatar.png')), filename: 'admin-avatar.png', content_type: 'image/png')

Article.create(
  title: "Gerente de Marketing",
  description: "Como Gerente de Marketing en nuestra empresa, serás responsable de liderar y ejecutar estrategias de marketing que impulsen el crecimiento de la marca y maximicen la participación en el mercado. Tu objetivo será desarrollar y supervisar campañas de marketing integrales, gestionar el equipo de marketing y colaborar estrechamente con otros departamentos para asegurar la coherencia de la marca en todos los canales.",
  requirements: "Experiencia previa de al menos 5 años en roles de marketing, preferiblemente en la industria de productos de consumo. Conocimientos sólidos en estrategias de marketing digital, incluyendo SEO, SEM y redes sociales. Habilidades comprobadas en gestión de equipos y liderazgo. Excelentes habilidades de comunicación y capacidad para trabajar de manera efectiva en un entorno colaborativo. Titulación universitaria en Marketing, Publicidad, Administración de Empresas o campo relacionado.",
  profit: 2500000,
  client_id: 1
)

Article.create(
  title: "Diseñador Gráfico",
  description: "Como Diseñador Gráfico, serás responsable de crear diseños innovadores y atractivos para nuestros productos y campañas de marketing. Trabajarás en estrecha colaboración con el equipo de marketing y de producto para desarrollar materiales visuales que reflejen la identidad de la marca y atraigan a nuestro público objetivo.",
  requirements: "Experiencia demostrable como diseñador gráfico, preferiblemente en la industria de productos de consumo.
  Dominio de software de diseño como Adobe Illustrator, Photoshop y InDesign.
  Fuerte sentido de la creatividad y la estética visual.
  Capacidad para trabajar bajo presión y cumplir con plazos ajustados.
  Portafolio que demuestre habilidades en diseño gráfico y experiencia en la creación de materiales impresos y digitales.",
  profit: 1800000,
  client_id: 1
)
Article.create(
  title: "Ejecutivo de Ventas",
  description: "Como Ejecutivo de Ventas, serás responsable de gestionar y desarrollar relaciones comerciales con clientes existentes y potenciales. Tu objetivo será impulsar las ventas de nuestros productos, identificar nuevas oportunidades de negocio y asegurar la satisfacción del cliente.",
  requirements: "Experiencia previa en ventas, preferiblemente en la industria de productos de consumo.
  Habilidades sólidas de negociación y cierre de ventas.
  Capacidad para establecer y mantener relaciones comerciales efectivas.
  Orientación al cumplimiento de objetivos y resultados.
  Excelentes habilidades de comunicación y presentación.",
  profit: 2000000,
  client_id: 1
)
Article.create(
  title: "Ingeniero de Desarrollo de Productos",
  description: "Como Ingeniero de Desarrollo de Productos, serás responsable de liderar el proceso de desarrollo y lanzamiento de nuevos productos. Trabajarás en estrecha colaboración con el equipo de investigación y desarrollo para llevar ideas desde la conceptualización hasta la producción, asegurando la calidad y la innovación en todos los aspectos.",
  requirements: "Titulación universitaria en Ingeniería Industrial, Ingeniería de Productos o campo relacionado.
  Experiencia previa en el desarrollo de productos, preferiblemente en la industria de productos de consumo.
  Conocimientos sólidos en diseño y fabricación de productos.
  Habilidades analíticas y capacidad para resolver problemas técnicos.
  Excelentes habilidades de comunicación y capacidad para trabajar en equipo.",
  profit: 2300000,
  client_id: 1
)
Article.create(
  title: "Especialista en Control de Calidad",
  description: "Como Especialista en Control de Calidad, serás responsable de garantizar la calidad y la integridad de nuestros productos. Tu objetivo será implementar y mantener estándares de calidad, realizar inspecciones de productos y colaborar con el equipo de producción para resolver problemas de calidad.",
  requirements: "Experiencia previa en control de calidad, preferiblemente en la industria de productos de consumo.
  Conocimientos sólidos en metodologías y herramientas de control de calidad.
  Atención meticulosa a los detalles y capacidad para identificar y resolver problemas de calidad.
  Habilidades analíticas y capacidad para interpretar datos de pruebas y análisis.
  Titulación técnica en áreas relacionadas con control de calidad o calidad industrial.",
  profit: 1900000,
  client_id: 1
)
Article.create(
  title: "Coordinador de Logística y Distribución",
  description: "Como Coordinador de Logística y Distribución, serás responsable de coordinar las actividades de distribución y logística de nuestros productos. Gestionarás el inventario, supervisarás los procesos de envío y recepción, y garantizarás la eficiencia y precisión en todas las operaciones de logística.",
  requirements: "Experiencia previa en logística y distribución, preferiblemente en la industria de productos de consumo.
  Conocimientos sólidos en sistemas de gestión de inventario y software de logística.
  Habilidades organizativas y capacidad para gestionar múltiples tareas simultáneamente.
  Excelentes habilidades de comunicación y capacidad para colaborar con diferentes equipos.
  Orientación al cumplimiento de objetivos y capacidad para trabajar bajo presión.",
  profit: 2100000,
  client_id: 1
)
Article.create(
  title: "Operario de Producción",
  description: "Como Operario de Producción, serás responsable de realizar tareas de producción y ensamblaje en nuestra línea de fabricación de lápices. Tu trabajo consistirá en operar maquinaria y equipos, seguir instrucciones de producción y asegurar la calidad y eficiencia en el proceso de fabricación.",
  requirements: "Experiencia previa en roles de producción o manufactura, preferiblemente en la industria de productos de consumo.
  Capacidad para seguir procedimientos y protocolos de seguridad en el lugar de trabajo.
  Habilidades manuales y destreza para manipular herramientas y equipos.
  Disponibilidad para trabajar en turnos rotativos y fines de semana según sea necesario.
  Actitud proactiva y capacidad para trabajar de manera eficiente en un entorno de ritmo acelerado.",
  profit: 600000,
  client_id: 1
)
Article.create(
  title: "Inspector de Calidad de Productos",
  description: "Como Inspector de Calidad de Productos, serás responsable de realizar inspecciones visuales y funcionales en los productos fabricados para garantizar que cumplan con los estándares de calidad establecidos. Tu trabajo incluirá la identificación y documentación de defectos, así como la colaboración con el equipo de producción para resolver problemas de calidad.",
  requirements: "Experiencia previa en control de calidad o inspección de productos, preferiblemente en la industria de manufactura.
  Conocimientos básicos en normas de calidad y procedimientos de inspección.
  Atención meticulosa a los detalles y capacidad para identificar defectos en productos.
  Habilidades de comunicación para reportar hallazgos y colaborar con otros departamentos.
  Titulación técnica o experiencia equivalente en áreas relacionadas con control de calidad.",
  profit: 700000,
  client_id: 1
)
