class Product < ApplicationRecord
	include ::ProductPriceConcern

  self.table_name = 'products'

  acts_as_paranoid

  mount_uploader :shop_item, ShopItemUploader

  belongs_to :shop
  
  validates :title, :description, :price, 
  					:text_after_purchase, presence: true

  validates_numericality_of :price
  validates_numericality_of :discount
end
