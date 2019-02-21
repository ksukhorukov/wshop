class Cart < ApplicationRecord
	has_many :carts_products_shops, class_name: 'CartProductShop'
  has_many :products, through: :carts_products_shops

  belongs_to :user

  def cost
  	total_price = products.to_a.map(&:price).reduce(&:+) 
  	total_discount = products.to_a.map(&:discount).reduce(&:+)
  	total_price - total_discount
  end
end
