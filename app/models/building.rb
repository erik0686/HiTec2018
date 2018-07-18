class Building < ApplicationRecord
  belongs_to :color
  has_many :students, dependent: :destroy
  has_many :staffs, dependent: :destroy

  def color_building
    "#{color.name} #{name}"
  end
end
