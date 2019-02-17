class Cart < ApplicationRecord
	has_many :carts_products, class_name: 'CartProductShop'
  has_many :products, through: :carts_products

  belongs_to :shop
end
