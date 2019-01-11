class Floor < ApplicationRecord
  belongs_to :tower
  has_many :shops, dependent: :destroy
end
