# frozen_string_literal: true

class Admin::AdministrationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin!
  layout 'application'
end
