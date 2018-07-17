class CreateStaffAssistances < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_assistances do |t|
      t.references :staffs, foreign_key: true
      t.references :assistances, foreign_key: true

      t.timestamps
    end
  end
end
