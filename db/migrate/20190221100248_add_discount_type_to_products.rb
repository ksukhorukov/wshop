# frozen_string_literal: true

class AddDiscountTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :discount_type, :string
  end
end
