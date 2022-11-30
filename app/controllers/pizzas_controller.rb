class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all, except: [:created_at, :updated_at]
        render json: pizzas
    end
end