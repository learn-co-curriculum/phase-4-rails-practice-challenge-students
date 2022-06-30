class Instructor < ApplicationRecord
    validates :name, presence: {message: 'Name is required' }
    has_many :students, dependent: :destroy
end
