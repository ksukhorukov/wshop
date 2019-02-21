class Shop < ApplicationRecord
  self.table_name = 'shops'

	validates :title, :description, presence: true
	validates :slug, uniqueness: true

	belongs_to :admin
	has_many :carts
	has_many :products
	has_many :purchases
end