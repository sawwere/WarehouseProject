class Agent < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, :email, presence: true, length: { maximum: 50 }
  validates :email, uniqueness: { case_sensitive: false }, format:     { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }

   validates :password, length: { minimum: 6 }
  has_secure_password

  has_many :favourites
  has_many :operations
end
