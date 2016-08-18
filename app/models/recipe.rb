class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps

  validates :title, presence: true
end
