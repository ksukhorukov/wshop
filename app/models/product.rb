class Product < ApplicationRecord
  self.table_name = 'products'

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :price
	validates_presence_of :text_after_purchase

  validates_numericality_of :price
  validates_numericality_of :discount
end
