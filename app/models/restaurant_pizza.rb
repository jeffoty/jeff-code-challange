class RestaurantPizza < ApplicationRecord
    validates :price, :inclusion=>1..30

    belongs_to :restaurant
    belongs_to :pizza

    validates :price, presence: true
    validate :price_margin

    def price_margin
        if (price > 30 || price < 1)
            errors.add(:price, "must be between 0 and 30")
        end
    end
end
