class Employee < ApplicationRecord
  belongs_to :dog

  validates :first_name, :last_name, :alias, :title, :office, :dog_id, :img_url, presence: true
  validates :alias, uniqueness: true

  def to_s
    self.first_name + " " + self.last_name
  end

end
