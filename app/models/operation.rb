class Operation < ApplicationRecord
  has_many :goods
  belongs_to :agent
  has_many :warehouses
end
