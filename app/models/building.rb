class Building < ApplicationRecord
  belongs_to :color
  has_many :students

  def color_building
    "#{color.name} #{name}"
  end
end
