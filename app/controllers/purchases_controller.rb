class PurchasesController < ApplicationController

  def new
  	@purchase = Purchase.new(cart: Cart.find(params[:cart_id]))
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.cart = Cart.find(purchase_params[:cart_id])
    @purchase.shop = @purchase.cart.shop
    @purchase.link = SecureRandom.uuid

    if @purchase.save
      redirect_to "/purchases/#{@purchase.link}"
    else
      render 'new'
    end
  end

  def show
    byebug
  	@purchase = Purchase.find_by_link(params[:id])
  end

  private

  def purchase_params
  	params.require(:purchase).permit(:cart_id, :email, :card_truncated)
  end
end