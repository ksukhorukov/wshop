class ProductInstockByDefault < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :products, :instock, true
  end
end
