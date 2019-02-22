module ApplicationHelper
	def current_user
		session[:user] ||= User.create
		@user ||= User.find(session[:user]['id'])
	end
end
