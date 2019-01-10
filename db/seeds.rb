# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kimbo = User.create(name: "Mike", username: "kimbo", email: "mike@gmail.com", password: "123")

tower = Tower.create(name: "KIMbo Tower", happiness: 100, funds: 5000000, population: 1, user_id: 1)

floor1 = Floor.create(level: 1, tower_id: 1)
floor2 = Floor.create(level: 2, tower_id: 1)
floor3 = Floor.create(level: 3, tower_id: 1)
floor4 = Floor.create(level: 4, tower_id: 1)
floor5 = Floor.create(level: 5, tower_id: 1)

apt1 = Shop.create(name: "Apt", shop_type: "Housing", floor_id: 1)
food1 = Shop.create(name: "Food", shop_type: "Food", floor_id: 2)
food2 = Shop.create(name: "Food 2", shop_type: "Food", floor_id: 3)
apt2 = Shop.create(name: "Apt 2", shop_type: "Housing", floor_id: 4)
