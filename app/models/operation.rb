class Operation < ApplicationRecord
  has_many :id_goods
  belongs_to :id_ag
  has_many :id_wh
end
