class Recipe < ApplicationRecord
  has_many :ingredients

  validates :title, presence: true
end
