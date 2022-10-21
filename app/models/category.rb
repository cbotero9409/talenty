class Category < ApplicationRecord
  has_many :services
  has_one_attached :photo
  has_many :users, through: :services

  validates :name, format: { with: /\A[a-zA-ZñÑ\s]*\z/, message: "only letters allowed" }
end
