class Category < ApplicationRecord
  has_many :services
  has_one_attached :photo
  has_many :users, through: :services

  validates :name, format: { with: /\A[a-zá-úA-ZÁ-ÚñÑ\s]*\z/, message: "only letters allowed" }
end
