class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :shop_type, :floor_id
  belongs_to :floor
end
