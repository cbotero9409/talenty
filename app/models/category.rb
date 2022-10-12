class Category < ApplicationRecord
  has_many :services
  has_one_attached :photo
end
