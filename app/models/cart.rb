class Cart < ApplicationRecord
	has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops

  belongs_to :shop
  belongs_to :user
end
