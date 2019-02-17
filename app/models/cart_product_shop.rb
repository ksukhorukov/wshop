class CartProductShop < ApplicationRecord
	self.table_name = 'carts_products_shops'

  belongs_to :product
  belongs_to :cart
  belongs_to :shop
end