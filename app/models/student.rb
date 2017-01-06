class Student < ApplicationRecord
  has_many :pitches
  belongs_to :team, optional: true
  alias_attribute :team, :pitch
  has_many :preferences

  validates :pitches, length: {maximum: 2}
end
