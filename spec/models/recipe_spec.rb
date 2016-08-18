require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { build :recipe }

  it { should have_many(:ingredients) }

  it 'is valid with valid attributes' do
    expect(recipe).to be_valid
  end

  it 'is not valid without a title' do
    recipe.title = nil
    expect(recipe).to_not be_valid
  end
end
