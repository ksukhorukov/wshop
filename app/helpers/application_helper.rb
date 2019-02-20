module ApplicationHelper
	def current_user
		@user ||= User.create
		session[:user_id] = @user.id
end
