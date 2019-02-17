class Products < ActiveRecord::Migration[5.1]
  def change
  	create_table :products do |t|
  		t.integer  :shop_id
      t.integer  :cart_id
  	  t.string   :title
  	  t.string   :description 
      t.float    :price 
      t.float    :discount
  	  t.boolean  :instock
  	  t.string   :text_after_purchase
  		t.string   :file
  		t.timestamps
  	end
  end
end
