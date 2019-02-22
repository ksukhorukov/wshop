class PurchasesController < ApplicationController

  def new
  	@purchase = Purchase.new(cart: current_cart)
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.cart = current_cart
    @purchase.link = SecureRandom.uuid
    
    if @purchase.save
      redirect_to "/purchase/#{@purchase.link}"
    else
      render 'new'
    end
  end

  def show
  	@purchase = purchase.where(link: params[:link])
  end

  private

  def purchase_params
  	params.require(:purchase).permit(:email, :card_truncated)
  end
end