# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Address.destroy_all
Route.destroy_all


user_a = User.create(username: "Errol", password: "Yeet")

route_a = Route.create(name: "monday", user_id: user_a.id, is_optimized: true)

address = Address.create(name: "house", address: "11903 Selridge Road", zipcode: 20906, latitude: "39.051772", longitude: "-77.080413", sorted_index: 0, optimal_index: 0, first: "true", last: "true", route_id: route_a.id)
address = Address.create(name: "tulare", address: "4111 Tulare Drive", zipcode: 20906, latitude: "39.051566", longitude: "-77.08192", sorted_index: 1, optimal_index: 1, first: "false", last: "false", route_id: route_a.id)
address = Address.create(name: "garland", address: "7716 Garland Avenue", zipcode: 20912, latitude: "38.987176", longitude: "-76.997217", sorted_index: 2, optimal_index: 2, first: "false", last: "false", route_id: route_a.id)
address = Address.create(name: "patapsco", address: "106 Patapsco Avenue", zipcode: 21222, latitude: "39.259203", longitude: "-76.527389", sorted_index: 3, optimal_index: 3, first: "false", last: "false", route_id: route_a.id)

# route = Route.all.first
#<Route id: 4, name: "monday", user_id: 5, is_optimized: true, created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52"> 

# route.user
#<User id: 5, username: "Errol", password: "Yeet", created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52"

# route.addresses
#<Address id: 13, name: "house", address: "11903 Selridge Road", zipcode: 20906, latitude: 39.051772, longitude: -77.080413, sorted_index: 0, optimal_index: 0, first: true, last: true, route_id: 4, created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52">, 
#<Address id: 14, name: "tulare", address: "4111 Tulare Drive", zipcode: 20906, latitude: 39.051566, longitude: -77.08192, sorted_index: 1, optimal_index: 1, first: false, last: false, route_id: 4, created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52">, 
#<Address id: 15, name: "garland", address: "7716 Garland Avenue", zipcode: 20912, latitude: 38.987176, longitude: -76.997217, sorted_index: 2, optimal_index: 2, first: false, last: false, route_id: 4, created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52">, 
#<Address id: 16, name: "patapsco", address: "106 Patapsco Avenue", zipcode: 21222, latitude: 39.259203, longitude: -76.527389, sorted_index: 3, optimal_index: 3, first: false, last: false, route_id: 4, created_at: "2019-08-06 17:44:52", updated_at: "2019-08-06 17:44:52">]> 



