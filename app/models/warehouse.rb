class Warehouse < ApplicationRecord
  has_many :goods_wh
  has_many :operation
end
