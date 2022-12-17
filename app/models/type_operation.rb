class TypeOperation < ApplicationRecord
  validates :title, uniqueness: true
end
