class ShopsController < ApplicationController
	def index
		@shops = Shop.where(instock: true)
		
	end

	def show
		@shop ||= Shop.find_by_slug(params[:slug])
	end
end