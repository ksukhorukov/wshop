class CreateTablePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
    	t.string :email
    	t.string :card_truncated
    	t.string :status
    	t.string :link
    	t.timestamps
    end
  end
end
