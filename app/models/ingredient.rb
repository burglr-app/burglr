class Ingredient < ApplicationRecord
  validates :title, :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
