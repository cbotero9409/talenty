class Category < ApplicationRecord
  has_many :services
  has_one_attached :photo

  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only letters allowed" }
end
