class CartsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def update
	 	product = Product.find(cart_params[:product_id])
	 	if product.present?
	 		CartProductShop.create(product: product, shop: product.shop, cart: current_user.cart)
	 	end
	 	head :no_content
	end

	def cart_params
		params.require(:data).permit(:product_id)
	end
end


