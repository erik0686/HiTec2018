class ChangeReferencesToStaffAssistance < ActiveRecord::Migration[5.1]
  def change
    rename_column :staff_assistances, :staffs_id, :staff_id
    rename_column :staff_assistances, :assistances_id, :assistance_id
  end
end
