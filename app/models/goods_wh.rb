class GoodsWh < ApplicationRecord
  has_many :warehouses
  has_many :goods

  validates :quantity, :price, :numericality => { :greater_than => 0 }
end
