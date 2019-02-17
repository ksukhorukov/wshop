class Shop < ApplicationRecord
	self.table_name = 'shops'

	validates :title, :description, presence: true
	belongs_to :admin
	has_many :carts
	has_many :products
end