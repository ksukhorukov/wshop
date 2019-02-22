module ProductPriceConcern
	extend ActiveSupport::Concern

	class_methods do 

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
end