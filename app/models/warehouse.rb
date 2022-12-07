class Warehouse < ApplicationRecord
  belongs_to :goods_wh
  has_many :operation
end
