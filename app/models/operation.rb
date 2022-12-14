class Operation < ApplicationRecord
  belongs_to :good
  belongs_to :agent
  belongs_to :warehouse
end
