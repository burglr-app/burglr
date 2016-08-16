FactoryGirl.define do
  factory :recipe do
    sequence(:title) { |i| "Recipe #{i}" }
  end
end
