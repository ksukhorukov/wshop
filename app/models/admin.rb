class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
   			 :rememberable, :validatable
	self.table_name = 'admins'

	has_one :shop
end