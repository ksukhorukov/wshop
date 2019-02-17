class Product < ApplicationRecord
  self.table_name = 'products'

  belongs_to :shop
  
  validates :title, :description, :price, 
  					:text_after_purchase, presence: true

  validates_numericality_of :price
  validates_numericality_of :discount
end
