# frozen_string_literal: true

class AddSatusToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :status, :boolean
  end
end
