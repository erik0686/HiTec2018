class Building < ApplicationRecord
  belongs_to :color

  def color_building
    "#{color.name} #{name}"
  end
end
