class Good < ApplicationRecord
  validates :nomenclature, presence: true
  validates :nomenclature, uniqueness: true
  has_many :favourites
  has_many :goods_whs
  has_many :operations
end
