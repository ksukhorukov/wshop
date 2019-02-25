# frozen_string_literal: true

class AddNameToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :name, :string
  end
end
