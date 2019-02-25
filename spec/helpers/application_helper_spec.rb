# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  it 'current_cart should return valid cart' do
    expect(current_cart).to be_valid
  end

  it 'current_user should return valid user' do
    expect(current_user).to be_valid
  end

  it 'current_user has assosiated cart' do
    expect(current_user.cart.class).to eq(Cart)
  end
end
