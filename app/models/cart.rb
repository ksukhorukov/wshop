class Cart < ApplicationRecord
	has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops
  has_one :purchase
  
  belongs_to :user
  

  def cost
  	summ = 0.0

		products.each do |product|
			if product.discount_type == 'percent'
				summ += product.price - (product.price * (product.discount / 100.0))
			elsif product.discount_type == 'absolute'
				summ += product.price - product.discount
			else
				summ += product.price
			end	
		end
		summ	
  end
end
