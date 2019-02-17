# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { create(:product) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without text after purchase" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end


