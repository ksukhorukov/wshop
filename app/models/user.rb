class User < ApplicationRecord
	has_many :carts, -> { where(status: 'active') }
end
