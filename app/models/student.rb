class Student < ApplicationRecord
  has_many :pitches
  belongs_to :team, optional: true
  alias_attribute :team, :pitch
end
