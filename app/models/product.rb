# frozen_string_literal: true

class Product < ApplicationRecord
  self.table_name = 'products'

  acts_as_paranoid

  mount_uploader :shop_item, ShopItemUploader

  belongs_to :shop

  validates :title, :description, :price,
            :text_after_purchase, presence: true

  validates_numericality_of :price
  validates_numericality_of :discount

  def price_with_discount
    if discount.present?
      if discount_type == 'absolute'
        self.price - self.discount
      else
        price = ((self.price * self.discount) / 100.0)
      end
    end
  end
end
