class User < ApplicationRecord
  has_one :tower
  has_many :floors, through: :tower
  has_many :shops, through: :floors
  has_secure_password
end
