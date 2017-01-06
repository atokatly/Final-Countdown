class Pitch < ApplicationRecord
  belongs_to :student
  belongs_to :pitchday
  has_many :students
  accepts_nested_attributes_for :students
  has_many :preferences
end
