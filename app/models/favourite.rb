class Favourite < ApplicationRecord
  # belongs_to :id_goods
  # belongs_to :id_ag
  belongs_to :agent
  belongs_to :good
end
