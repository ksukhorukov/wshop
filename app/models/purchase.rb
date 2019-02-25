# frozen_string_literal: true

class Purchase < ApplicationRecord
  validate :card_truncated_validation
  validates :email, :card_truncated, presence: true

  before_save :truncate_card

  belongs_to :cart
  belongs_to :shop

  private

  def card_truncated_validation
    card_number = card_truncated.split.join
    errors.add(:purchase, 'Invalid card') unless card_number =~ /\d+/
    errors.add(:purchase, 'Invalid card') if card_number.size != 16
  end

  def truncate_card
    self.card_truncated = card_truncated.slice(12, 4)
  end
end
