class Step < ApplicationRecord
  belongs_to :recipe

  validates :title, :position, presence: true
end
