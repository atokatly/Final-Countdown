class Pitch < ApplicationRecord
  belongs_to :student
  has_many :students
  accepts_nested_attributes_for :students
  has_many :preferences

  #student.pitches.length > 1 redirect to "Thank you" page. < 1 redirect to new pitch page

  def pitch_length

  end



end
