class Round < ApplicationRecord
  has_many :preferences
  belongs_to :pitchday
end
