class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews, through: :user
  has_one :review

  validates :start_date, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates_comparison_of :end_date, greater_than: :start_date
end
