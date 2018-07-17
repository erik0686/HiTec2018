class StaffAssistance < ApplicationRecord
  belongs_to :staff
  belongs_to :assistance
end
