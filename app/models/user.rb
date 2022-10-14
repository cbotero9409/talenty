class User < ApplicationRecord
  validate :password_regex

  has_many :reviews
  has_many :bookings
  has_many :services
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  def password_regex
    return if password.blank? || password =~ /\A(?=.*\d)(?=.*[A-Z])(?=.*\W)[^ ]{6,}\z/

    errors.add :password, 'Password should have more than 6 characters including 1 uppercase letter, 1 number, 1 special character'
  end
end
