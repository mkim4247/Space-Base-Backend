class ShopSerializer < ActiveModel::Serializer
  attributes :id, :shop_type, :floor_id
  belongs_to :floor
end
