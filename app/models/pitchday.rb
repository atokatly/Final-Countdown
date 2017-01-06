class Pitchday < ApplicationRecord
  belongs_to :user
  has_many :rounds
  has_many :pitches



end
