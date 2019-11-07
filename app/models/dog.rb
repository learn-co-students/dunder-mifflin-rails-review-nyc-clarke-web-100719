class Dog < ApplicationRecord
  has_many :employees

  def self.sorted 
    all.sort_by do | dog |
      dog.employees.count
    end.reverse 
  end

end
