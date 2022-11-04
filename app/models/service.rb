class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :photos

  validates :name, :duration, presence: true
  validates :price, :duration, numericality: { only_integer: true }
end
