class Student < ApplicationRecord
  belongs_to :building, optional:true
  has_many :student_activities, dependent: :destroy
end
