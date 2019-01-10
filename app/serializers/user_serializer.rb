class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_one :tower
end
