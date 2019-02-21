class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private

	def current_user
		session[:user] ||= User.create(cart: Cart.create)
		@user ||= User.find(session[:user]['id'])
	end
end
