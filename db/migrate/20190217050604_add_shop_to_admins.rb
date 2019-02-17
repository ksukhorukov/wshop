class AddShopToAdmins < ActiveRecord::Migration[5.1]
  def change
  	add_column :shops, :admin_id, :integer
  end
end
