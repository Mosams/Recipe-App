class Food < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods, foreign_key: :food_id, dependent: :destroy
  has_many :recipe_foods, foreign_key: :food_id, dependent: :destroy
  validates :food, :measurement_unit, :unit_price, presence: true
  validates :unit_price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
