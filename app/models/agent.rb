class Agent < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

  belongs_to :favourite
end
