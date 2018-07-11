class Student < ApplicationRecord
    scope :search_career, lambda { |career| where("career ILIKE ?", "%#{career}%") } 
end
