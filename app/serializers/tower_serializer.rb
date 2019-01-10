class TowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :happiness, :funds, :population, :floors
  belongs_to :user

  def floors
    object.floors.map do |floor|
      FloorSerializer.new(floor)
    end
  end

end
