class AddCartIdToPurchases < ActiveRecord::Migration[5.1]
  def change
  	add_column :purchases, :cart_id, :integer
  end
end
