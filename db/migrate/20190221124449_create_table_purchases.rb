class CreateTablePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :table_purchases do |t|
    	t.string :email,
    	t.string :card_truncated,
    	t.string :status,
    	t.sting :link
    	t.timestamps
    end
  end
end
