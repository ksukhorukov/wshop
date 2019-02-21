class Purchase < ApplicationRecord
	has_one :cart

	validates :email, :card, presence: true
end