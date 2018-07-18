class Student < ApplicationRecord
  belongs_to :building, optional:true
end
