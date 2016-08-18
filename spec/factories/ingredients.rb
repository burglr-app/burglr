FactoryGirl.define do
  factory :ingredient do
    sequence(:title) { |i| "Ingredient #{i}" }
    quantity 1
    type 'liters'
    recipe
  end
end
