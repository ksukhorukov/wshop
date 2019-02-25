# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create }

  it 'is valid right after creation' do
    expect(subject).to be_valid
  end
end
