# frozen_string_literal: true

class Admin::ShopsController < Admin::AdministrationController
  def index
    @shop = current_admin.shop
  end

  def edit
    session[:return_to] ||= request.referer
    @shop = current_admin.shop
  end

  def update
    @shop = current_admin.shop
    if @shop.update_attributes(shop_params)
      flash[:success] = 'Настройки обновлены'
      redirect_to session.delete(:return_to)
    else
      render 'edit'
    end
  end

  def shop_params
    params.require(:shop).permit(:title, :description, :slug)
  end
end
