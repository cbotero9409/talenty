class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :start_date, :end_date, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
