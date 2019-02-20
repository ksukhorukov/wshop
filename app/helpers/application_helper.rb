module ApplicationHelper
	def current_user
		@user ||= User.create
		session[:user_id] = @user.id
	end

	def current_cart
		@cart || current_user.update(cart: Cart.create)
	end
end
