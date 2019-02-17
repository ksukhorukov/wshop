class Shop < ActiveRecord::Migration[5.1]
  def change
  	create_table :shop do |t|
  		t.string :slug
  		t.string :title
  		t.string :descripion
  		t.timestamps
  	end
  end
end
