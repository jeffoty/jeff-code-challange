class RestaurantSingleSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :pizzas
  #has_many :pizzas
end
