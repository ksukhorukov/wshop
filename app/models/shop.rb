class Shop < ApplicationRecord
	self.table_name = 'shops'

	belongs_to :admin
	has_many :carts
	has_many :products
end