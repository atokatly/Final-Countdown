class User < ApplicationRecord
  has_many :pitchdays

  has_secure_password
end
