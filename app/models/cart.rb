class Cart < ApplicationRecord
	has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops
  has_one :purchase
  
  belongs_to :user
  belongs_to :shop
  

  def total_cost
  	products.map { |product| price_with_discount(product) }.reduce(&:+)
	end

	def price_with_discount(product)
		summ = 0.0
		if product.discount_type == 'percent'
			summ += product.price - (product.price * (product.discount / 100.0))
		elsif product.discount_type == 'absolute'
			summ += product.price - product.discount
		else
			summ += product.price
		end	
		summ	
	end
end