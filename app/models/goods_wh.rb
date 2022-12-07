class GoodsWh < ApplicationRecord
  has_many :warehouse
  has_many :goods
end
