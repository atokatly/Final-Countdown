class Preference < ApplicationRecord
  belongs_to :student
  belongs_to :pitch
  belongs_to :round
end
