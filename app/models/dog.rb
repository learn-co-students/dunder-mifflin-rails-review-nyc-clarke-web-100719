class Dog < ApplicationRecord
  # has_and_belongs_to_many :employees
 has_many :employees

 validates :name, :breed, :age, presence: true
 # validates :

  scope :sorted_by_employee, lambda { where(:self.employees).count }
 # scope :visible, lambda { where(:visible => true) }

  @is_sorted = false

 

  def to_s
   self.name + " " + self.breed + " " + self.age.to_s
  end

 def self.toggle_sort
  # self.i
  @is_sorted = !@is_sorted
 end

end
