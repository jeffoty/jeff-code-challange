class RestaurantSingleSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :pizzas
  
end
