class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	self.table_name = 'admins'

	has_one :shop
end