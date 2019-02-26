# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops
  has_one :purchase

  belongs_to :user
  belongs_to :shop

  def total_cost
    products.map { |product| price_with_discount(product) }.reduce(&:+)
   end

  def price_with_discount(product)
    summ = 0.0
    summ += if product.discount_type == 'percent'
              product.price - (product.price * (product.discount / 100.0))
            elsif product.discount_type == 'absolute'
              product.price - product.discount
            else
              product.price
            end
    summ.round
  end
end
