class CreateCartsProductsShops < ActiveRecord::Migration[5.1]
    create_table :carts_products do |t|
      t.integer :cart_id, null: :false, index: :true
      t.integer :product_id, null: :false, index: :true
      t.integer :shop_id, null: :false, index: :true
      t.timestamps
    end
end
