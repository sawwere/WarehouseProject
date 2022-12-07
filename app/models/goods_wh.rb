class GoodsWh < ApplicationRecord
  belongs_to :wh
  has_many :goods
end
