# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception

  def after_sign_in_path_for(_resource)
    '/admin'
   end
end
