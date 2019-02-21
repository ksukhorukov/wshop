class AddPurchaseIdToCart < ActiveRecord::Migration[5.1]
  def change
  	add_column :carts, :purchase_id, :string
  end
end
