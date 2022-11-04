class User < ApplicationRecord
  validate :password_regex

  has_many :reviews
  has_many :bookings
  has_many :services
  has_one_attached :photo
  has_many_attached :photos_services
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, format: { with: /\A[a-zA-Zá-úÁ-Ú]*\z/, message: "only letters allowed" }, presence: false
  validates :phone, format: { with: /\A[+]*[(]{0,1}[0-9]{0,4}[)]{0,1}[-\s\.0-9]*\z/, message: "invalid format" }, presence: false

  private

  def password_regex
    return if password.blank? || password =~ /\A(?=.*\d)(?=.*[A-Z])(?=.*\W)[^ ]{6,}\z/

    errors.add :password, 'Password should have more than 6 characters including 1 uppercase letter, 1 number, 1 special character'
  end
end
