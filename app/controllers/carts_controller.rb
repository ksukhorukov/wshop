class CartsController < ApplicationController
	def index
		@products = current_user.products
	end

	def update

	end

	def create
	end
end


