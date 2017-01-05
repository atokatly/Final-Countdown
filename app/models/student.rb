class Student < ApplicationRecord
  has_many :pitches
  alias_attribute :team, :pitch
end
