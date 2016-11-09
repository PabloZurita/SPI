# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clientes_list = [
  [ 1,"125516203","ingrid_carolag@hotmail.com"],
  [ 2, "53433642"	,"cacs1976@hotmail.com" ],
  [ 3, "112660267", "juan_mart_inez_g@yahoo.com"],
  [ 4, "70316471", "aleneumannp@gmail.com" ]
]

clientes_list.each do |id_cliente, rut_cliente, mail_cliente|
  Cliente.create( id_cliente: id_cliente, rut_cliente: rut_cliente, mail_cliente: mail_cliente)
end


