class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_many_attached :photos

  validates :content, length: { minimum: 5 }, allow_blank: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }
end
