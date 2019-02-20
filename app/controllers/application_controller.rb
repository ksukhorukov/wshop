class ApplicationController < ActionController::Base
  include ApplicationHelper
  helper_method :current_user, :current_cart

  protect_from_forgery with: :exception
end
