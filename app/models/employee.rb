class Employee < ApplicationRecord
    validates :title, :alias, uniqueness: true

    belongs_to :dog
    
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

end
