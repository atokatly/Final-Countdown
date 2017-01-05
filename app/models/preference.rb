class Preference < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :pitch, optional: true
  belongs_to :round, optional: true
end
