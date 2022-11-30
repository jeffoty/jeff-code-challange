

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

# RestaurantPizza.create(price: 26,restaurant_id: restaurant2, pizza_id: pizza5)
# RestaurantPizza.create(price: 11,restaurant_id: restaurant1, pizza_id: pizza2)
# RestaurantPizza.create(price: 20,restaurant_id: restaurant3, pizza_id: pizza4)
# RestaurantPizza.create(price: 7,restaurant_id: restaurant5, pizza_id: pizza3)
# RestaurantPizza.create(price: 15,restaurant_id: restaurant4, pizza_id: pizza1)

puts "🍕 Adding pizzas to restaurants..."
Restaurant.all.each do |restaurant|
    rand(1..5).times do
        # get a random pizza
    pizza = Pizza.find(Pizza.pluck(:id).sample)

    RestaurantPizza.create!(restaurant_id: restaurant.id, pizza_id: pizza.id, price: rand(5..25))
  end
end