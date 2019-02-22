class Cart < ApplicationRecord
	include ::ProductPriceConcern

	has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops
  has_one :order
  
  belongs_to :user
  belongs_to :shop
  

  def cost
  	products.map { |product| product.price_with_discount }.reduce(&:+)
	end
end