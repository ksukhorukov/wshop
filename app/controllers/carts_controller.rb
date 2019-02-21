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

	private

	def current_user
		session[:user] ||= User.create(cart: Cart.create)
		@user ||= User.find(session[:user]['id'])
	end
end


