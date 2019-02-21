class ShopsController < ApplicationController
	def index
		@shops = Shop.all
		byebug
	end

	def show
		@shop ||= Shop.find_by_slug(params[:slug])
	end
end