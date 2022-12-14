class Agent < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

  has_many :favourite
  has_many :operation
end
