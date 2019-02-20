module ApplicationHelper
	def current_user
		@user ||= User.create(cart: Cart.create)
	end

	def current_cart
		@cart ||= current_user.cart
	end	
end
