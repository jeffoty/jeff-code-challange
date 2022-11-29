# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all


restaurant1 = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
restaurant2 = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
restaurant3 = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
restaurant4 = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
restaurant5 = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)


pizza1 = Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)
pizza2 = Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)
pizza3 = Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)
pizza4 = Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)
pizza5 = Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)

RestaurantPizza.create(price: 15,restaurant_id: restaurant4, pizza_id: pizza1)
RestaurantPizza.create(price: 26,restaurant_id: restaurant2, pizza_id: pizza5)
RestaurantPizza.create(price: 11,restaurant_id: restaurant1, pizza_id: pizza2)
RestaurantPizza.create(price: 20,restaurant_id: restaurant3, pizza_id: pizza4)
RestaurantPizza.create(price: 7,restaurant_id: restaurant5, pizza_id: pizza3)