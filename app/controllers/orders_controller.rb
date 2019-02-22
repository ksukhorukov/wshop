class OrdersController < ApplicationController

  def new
  	@order = order.new(cart: current_cart)
  end

  def create
    @order = Order.new(order_params)
    @order.cart = current_cart
    @order.link = SecureRandom.uuid
    if @order.save
      redirect_to "/order/#{@order.link}"
    else
      render 'new'
    end
  end

  def show
  	@order = order.where(link: params[:link])
  end

  private

  def order_params
  	params.require(:order).permit(:email, :card)
  end
end