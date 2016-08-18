class Step < ApplicationRecord
  validates :title, :position, presence: true
end
