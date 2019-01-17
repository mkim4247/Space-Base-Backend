class TowerSerializer < ActiveModel::Serializer
  attributes :id, :happiness, :resources, :population, :floors, :defense
  belongs_to :user

  def floors
    object.floors.map do |floor|
      FloorSerializer.new(floor)
    end
  end

end
