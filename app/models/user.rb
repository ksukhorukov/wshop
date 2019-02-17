class User < ApplicationRecord
	self.table_name = 'users'

	has_one :shop
end