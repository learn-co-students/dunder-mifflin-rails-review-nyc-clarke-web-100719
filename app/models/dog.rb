class Dog < ApplicationRecord
    has_many :employees

    def employee_count
        self.employees.count
    end

    def self.sorted_dogs
        @dogs = self.all
        @dogs.each {|dog| dog.employee_count}.sort
    end
    #BONUS: Make an option to sort the dogs on the index page by the number of employees that belong to them.
end
