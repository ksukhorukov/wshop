class CreateTableOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
    	t.integer :shop_id
        t.integer :cart_id
    	t.string :email
    	t.string :card_truncated
    	t.string :status
    	t.string :link
    	t.float  :summ
    	t.timestamps
    end
  end
end
