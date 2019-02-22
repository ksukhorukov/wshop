module ApplicationHelper
	def current_user
		session[:user] ||= User.create(cart: Cart.create)
		@user ||= User.find(session[:user]['id'])
	end

	def current_cart
		@cart ||= current_user.cart
	end
end
