module ApplicationHelper

  def unique_buildings
    buildings = []
    Building.all.each do |building|
      included = false
      buildings.each do |array_building|
        if building.name == array_building
          included = true
          break
        end
      end
      unless included
        buildings << building.name
      end
    end
    buildings
  end
end
