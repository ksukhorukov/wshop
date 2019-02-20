class Admin::ProductsController < Admin::AdministrationController
	before_action :find_product, only: [:edit, :update, :destroy]

	def index
		@products = current_admin.shop.products
	end

	def show
		@product = current_admin.shop.products.find_by_id(params[:id])
	end

	def new
		@product = current_admin.shop.products.build
	end

	def edit
		@product
	end

	def create
		current_admin.shop.products.create(product_params)
		redirect_to products_path
	end

	def update
		if @product.update_attributes(product_params)
			flash[:success] = "Продукт обновлен"
			redirect_to products_path
		else
			render 'edit'
		end
	end

	def destroy
  	@product.destroy
		redirect_to products_path
	end

	private

	def find_product
		@product ||= Product.find_by_id(params[:id])
	end

  def product_params
    params.require(:product).permit(:title, :description, :price, :discount, :text_after_purchase)
  end
end
