module ApplicationHelper
	def current_user
		session[:user] ||= User.create(cart: Cart.create)
		@user ||= User.find(session[:user]['id'])
	end
end
