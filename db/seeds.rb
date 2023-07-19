# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



admin_user = Client.create!(email: 'esteban@admin.com', password: 'admin123', name: "Esteban", phone: 666444333, role: 1) #
admin_user.pfp.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'admin-avatar.png')), filename: 'admin-avatar.png', content_type: 'image/png')



# Article.create(
#     title: "Especialista en Desarrollo de Productos",
#     description: "Como Especialista en Desarrollo de Productos, serás responsable de investigar, conceptualizar y diseñar nuevos productos de insumos escolares y de oficina. Trabajarás en estrecha colaboración con el equipo de ingeniería y diseño para garantizar la calidad y funcionalidad de los productos.",
#     requirements: "Título universitario en Diseño Industrial o campo relacionado, Experiencia mínima de 3 años en desarrollo de productos, Conocimientos avanzados en programas de diseño gráfico y CAD, Capacidad para trabajar en equipo y comunicarse efectivamente, Conocimiento de las últimas tendencias en el mercado de insumos escolares y de oficina",
#     profit: 1500000, client_id: 1
# )

# Article.create(
#     title: "Gerente de Ventas",
#     description: "Como Gerente de Ventas, serás responsable de liderar y supervisar el equipo de ventas de la compañía. Tu objetivo principal será impulsar el crecimiento de las ventas y desarrollar estrategias para expandir la presencia de la marca en el mercado nacional e internacional.",
#     requirements: "Experiencia previa de al menos 5 años en posiciones de liderazgo en ventas. Conocimiento profundo del mercado de insumos escolares y de oficina. Habilidades demostradas en el establecimiento de relaciones comerciales y el cierre de acuerdos. Excelentes habilidades de comunicación y negociación. Capacidad para desarrollar y ejecutar estrategias de ventas efectivas.",
#     profit: 2000000, client_id: 1
# )

# Article.create(
#     title: "Técnico en Control de Calidad",
#     description: "Como Técnico en Control de Calidad, serás responsable de garantizar que los insumos escolares, artísticos y de oficina cumplan con los estándares de calidad establecidos por la compañía. Realizarás pruebas y análisis exhaustivos para asegurar que los productos sean confiables y cumplan con las especificaciones técnicas.",
#     requirements: "Título técnico en Control de Calidad o campo relacionado. Experiencia previa en control de calidad, preferentemente en la industria de insumos. Conocimientos en técnicas y herramientas de inspección y pruebas de calidad. Capacidad para interpretar y analizar datos técnicos. Atención al detalle y capacidad para trabajar de manera precisa y rigurosa.",
#     profit: 1200000, client_id: 1
# )