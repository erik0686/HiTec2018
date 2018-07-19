class StudentActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :student
end
