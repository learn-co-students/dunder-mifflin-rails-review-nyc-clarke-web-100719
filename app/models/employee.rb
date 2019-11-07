class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, uniqueness: true
    validates :alias, uniqueness: true

    def name
        self.first_name + " " + self.last_name + " aka: " + self.alias
    end

end
