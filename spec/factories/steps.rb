FactoryGirl.define do
  factory :step do
    sequence(:title) { |i| "Step #{i}" }
    position 1
    description 'Description'
    recipe
  end
end
