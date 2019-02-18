class Admin::ProductsController < Admin::AdministrationController
	def index
	end

	def show
	end

	def new
		@product = current_admin.shop.products.build
	end

	def edit
	end

	def create
		current_admin.shop.products.create(product_params)
		redirect_back
	end

	def update
	end

	def destroy
  	@product = current_admin.shop.products.find(params[:id])
  	@product.destroy
		redirect_to products_path
	end

	private

  def product_params
    params.require(:product).permit(:title, :description, :price, :discount, :text_after_purchase)
  end
end
