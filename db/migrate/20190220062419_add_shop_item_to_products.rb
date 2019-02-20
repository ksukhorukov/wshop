class AddShopItemToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :shop_item, :string
  end
end
