class Staff < ApplicationRecord
  belongs_to :building
  has_many :staff_assistances
end
