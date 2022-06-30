class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :major, :age

  belongs_to :instructor
end
