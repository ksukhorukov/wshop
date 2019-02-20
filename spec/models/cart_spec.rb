# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cart, type: :model do
  subject { build(:cart) }

  it 'is not valid without assosiated user' do 
  	subject.user_id = nil
  	expect(subject).to_not be_valid
  end

  it 'is valid when with assosiated user' do
  	expect(create(:cart)).to be_valid
  end
end