class GoodsWh < ApplicationRecord
  belongs_to :warehouse
  belongs_to :good

  validates :quantity, :numericality => { :greater_than => 0 }
  validates :warehouse_id, uniqueness: { scope: [:good_id] }
end
