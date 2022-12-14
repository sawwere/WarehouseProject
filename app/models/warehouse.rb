class Warehouse < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :goods_whs
  has_many :operations
end
