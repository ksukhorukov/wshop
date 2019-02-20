class CartsController < ApplicationController
	def update
	 	product = Product.find(params[:product_id])
	 	if product.present?
	 		CartProductShop.create(product: product, shop: product.shop, cart: current_cart)
	 	end

	 	head :no_content
	end
end


