class Student < ApplicationRecord
    validates :name, presence: true
    validates :age, numericality:{greater_than_or_equal_to: 18}
    validates :instructor_id, presence: true
    belongs_to :instructor

end
