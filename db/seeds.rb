# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cliente_l = [
  [1, "125516203",	"ingrid_carolag@hotmail.com" ],
  [2, "53433642",	"cacs1976@hotmail.com" ],
  [3, "112660267",	"juan_mart_inez_g@yahoo.com" ],
  [4, "70316471",	"ialeneumannp@gmail.com" ],
  [5, "81219907",	"gioconda134@hotmail.com" ]
]

cliente_l.each do |id_cliente, rut_cliente, mail_cliente|
  Cliente.create( id_cliente: id_cliente, rut_cliente: rut_cliente, mail_cliente: mail_cliente )
end

linea_l = [
  [1, "985248075" ],
  [2, "227786197" ],
  [3, "954355899" ],
  [4, "999521176" ],
  [5, "971470769" ]
]

linea_l.each do |id_linea, numero_cliente|
  Linea.create( id_linea: id_linea, numero_cliente: numero_cliente)
end

pregunta_l = [
  [1, "satisfacion" ],
  [2, "acceso" ],
  [3, "rapidez" ],
  [4, "facilidad" ],
  [5, "utilidad" ]
]

pregunta_l.each do |id_pregunta, tipo_pregunta|
  Preguntum.create( id_pregunta: id_pregunta, tipo_pregunta: tipo_pregunta)
end
