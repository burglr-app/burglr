class Recipe < ApplicationRecord
  validates :title, presence: true
end
