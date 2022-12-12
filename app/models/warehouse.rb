class Warehouse < ApplicationRecord
  has_many :goods_whs
  has_many :operations
end
