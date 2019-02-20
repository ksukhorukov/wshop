class ShopesController < ApplicationController
	def index
		@shop ||= Shop.find_by_slug(params[:slug])
		session[:test] = 'test value'
	end
end