class TowerSerializer < ActiveModel::Serializer
  attributes :id, :happiness, :funds, :population, :floors, :defense
  belongs_to :user

  def floors
    object.floors.map do |floor|
      FloorSerializer.new(floor)
    end
  end

end
