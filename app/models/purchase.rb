class Purchase < ApplicationRecord
	belongs_to :cart

	validates :email, :card, presence: true
end