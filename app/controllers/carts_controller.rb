class CartsController < ApplicationController
	skip_before_action :verify_authenticity_token 

	def index
		@carts = current_user.carts
	end
	
	# def show
	# 	@carts  = current_user.carts
	# end

	def create
	 	@product = Product.find(cart_params[:product_id])
	 	if @product.present?
	 		CartProductShop.create(product: @product, shop: @product.shop, cart: current_cart)
	 	end
	 	head :no_content
	end

	def cart_params
		params.require(:data).permit(:product_id)
	end

	private

	def current_cart
		cart = Cart.where(shop_id: @product.shop_id, user_id: current_user.id).order('created_at DESC').first
		current_user.carts.create(shop_id: @product.shop_id) unless cart.present? 			
	end
end


