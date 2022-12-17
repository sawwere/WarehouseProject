class GoodsWh < ApplicationRecord
  has_many :warehouses
  has_many :goods

  validates :quantity, :numericality => { :greater_than => 0 }
  validates :warehouse_id, uniqueness: { scope: [:good_id] }
end
