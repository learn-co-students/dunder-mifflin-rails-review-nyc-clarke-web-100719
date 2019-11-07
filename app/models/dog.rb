class Dog < ApplicationRecord
    has_many :employees

    def employee_count
        self.employees.count
    end

    def self.sort_dogs_by_employee_number 
        self.all.sort_by { |dog| dog.employee_count }
    end
    
end
