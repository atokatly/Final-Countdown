class Pitch < ApplicationRecord
  belongs_to :student
  has_many :students
  accepts_nested_attributes_for :students
end
