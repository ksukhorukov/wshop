# frozen_string_literal: true

class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new(cart: Cart.find(params[:cart_id]))
  end

  def create
    @purchase = Purchase.new(purchase_params)
    current_user_cart = Cart.find(purchase_params[:cart_id])
    @purchase.cart = current_user_cart
    @purchase.shop = @purchase.cart.shop
    @purchase.link = SecureRandom.uuid
    @purchase.summ = @purchase.cart.total_cost
    @purchase.status = 'complete'

    if @purchase.save
      current_user_cart.update_attributes(status: 'archive')
      redirect_to "/purchases/#{@purchase.link}"
    else
      render 'new'
    end
  end

  def show
    @purchase = Purchase.find_by_link(params[:id])
  end

  def destroy
    purchase = Purchase.find(params[:id])
    purchase.update_attributes(status: 'cancelled')
    head :no_content
  end

  private

  def purchase_params
    params.require(:purchase).permit(:cart_id, :email, :card_truncated)
  end
end
