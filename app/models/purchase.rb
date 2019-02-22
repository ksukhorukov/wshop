class Purchase < ApplicationRecord
	belongs_to :cart
	belongs_to :shop

	validates :email, :card_truncated, presence: true
end