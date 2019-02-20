class Product < ApplicationRecord
  self.table_name = 'products'

  mount_uploader :shop_item, ShopItemUploader

  belongs_to :shop
  
  validates :title, :description, :price, 
  					:text_after_purchase, presence: true

  validates_numericality_of :price
  validates_numericality_of :discount
end
