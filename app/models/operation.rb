class Operation < ApplicationRecord
  belongs_to :agent
  belongs_to :good
  belongs_to :warehouse
  belongs_to :type_operation


  validates :quantity, :price, :numericality => { :greater_than_or_equal_to => 0 }
end
