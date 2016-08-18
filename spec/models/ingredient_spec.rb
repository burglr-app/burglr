require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  let(:ingredient) { build :ingredient }

  it { should belong_to(:recipe) }

  it 'is valid with valid attributes' do
    expect(ingredient).to be_valid
  end

  it 'is not valid without a title' do
    ingredient.title = nil
    expect(ingredient).to_not be_valid
  end

  it 'is not valid without a quantity' do
    ingredient.quantity = nil
    expect(ingredient).to_not be_valid
  end

  it 'is not valid with a quantity less than zero' do
    ingredient.quantity = 0
    expect(ingredient).to_not be_valid
  end
end
