class Shops < ActiveRecord::Migration[5.1]
  def change
  	create_table :shops do |t|
  		t.string :slug
  		t.string :title
  		t.string :descripion
  		t.timestamps
  	end
  end
end
