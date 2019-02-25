# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shop, type: :model do
  subject { build(:shop) }

  it 'is valid if constructed in a proper way' do
    expect(subject).to be_valid
  end

  it 'it can have products' do
    subject.products << create(:product)
    expect(subject.products.size).to be_equal(1)
  end

  it 'it is not valid without title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
