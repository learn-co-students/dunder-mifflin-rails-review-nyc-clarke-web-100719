class Employee < ApplicationRecord
    validates :alias, :title, uniqueness: true
    belongs_to :dog


    def to_str
    self.first_name + " " + self.last_name
    end
end
