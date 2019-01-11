class Tower < ApplicationRecord
  belongs_to :user
  has_many :floors, dependent: :destroy
  has_many :shops, through: :floors
end
