class Staff < ApplicationRecord
  belongs_to :building, optional: true
  has_many :staff_assistances, dependent: :destroy
end
