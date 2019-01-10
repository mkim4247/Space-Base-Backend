class Tower < ApplicationRecord
  belongs_to :user
  has_many :floors
  has_many :shops, through: :floors
end
