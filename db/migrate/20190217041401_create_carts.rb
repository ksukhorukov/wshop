class CreateCarts < ActiveRecord::Migration[5.1]
  create_table :carts do |t|
  	t.integer :user_id
  	t.integer :shop_id
    t.timestamps
  end
end
