class Good < ApplicationRecord
  validates :nomenclature, presence: true
  validates :nomenclature, uniqueness: true
  has_many :favourites
end
