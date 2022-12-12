class GoodsWh < ApplicationRecord
  has_many :warehouses
  has_many :goods
end
