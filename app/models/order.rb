class Order < ApplicationRecord
	belongs_to :cart
	belongs_to :shop

	validates :email, :card, presence: true
end