class FloorSerializer < ActiveModel::Serializer
  attributes :id, :level, :tower_id
  has_many :shops
end
