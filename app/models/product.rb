class Product < ApplicationRecord
  self.table_name = 'products'

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price

  validates_numericality_of :price
end
