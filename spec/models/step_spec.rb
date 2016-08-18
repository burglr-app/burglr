require 'rails_helper'

RSpec.describe Step, type: :model do
  let(:step) { build :step }

  it 'is valid with valid attributes' do
    expect(step).to be_valid
  end

  it 'is not valid without a title' do
    step.title = nil
    expect(step).to_not be_valid
  end

  it 'is not valid without a postion' do
    step.position = nil
    expect(step).to_not be_valid
  end
end
