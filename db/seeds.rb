# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = [{name: "CEO", prior: 1},{name: "VIP", prior: 2},{name: "Director",prior: 3},{name: "Manager",prior: 4},{name: "SDE", prior: 5}]
roles.each do |role|
	Role.create(name: role[:name],prior: role[:prior] )
end