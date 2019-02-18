class CreateShops < ActiveRecord::Migration[5.1]
  def change
  	create_table :shops do |t|
  		t.string :slug
  		t.string :title
  		t.string :description
  		t.integer :admin_id
  		t.timestamps
  	end
  end
end
