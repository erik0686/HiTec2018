class Color < ApplicationRecord
  has_many :buildings, dependent: :destroy
  scope :by_points, -> { order(points: :desc) }
  

  # def update_points
  #   points = 0
  #   buildings.each do |building|
  #     points += building.points
  #   end
  #   save
  # end
end
