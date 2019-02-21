class PurchasesController < ApplicationController

def new
	@purchase = Purchase.new(cart: current_cart)
end

def create
  @purchase = Purchase.new(purchase_params)
  @purchase.cart = current_cart
  if @purchase.save
   redirect_to "/purchases/#{params[:link]}"
  else
    render 'new'
  end
end

def show
	@purchase = Purchase.where(link: params[:link])
end

private

def purchase_params
	require(:purchase).permit(:email, :card)
end