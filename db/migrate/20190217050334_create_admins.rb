class CreateAdmins < ActiveRecord::Migration[5.1]
  def up
  	create_table :admins
  end

  def down
  	drop_table :admins
  end
end
