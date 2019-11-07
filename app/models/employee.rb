class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  
end
