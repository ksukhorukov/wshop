class Shop < ApplicationRecord
	self.table_name = 'shops'
	
	has_many :carts
end