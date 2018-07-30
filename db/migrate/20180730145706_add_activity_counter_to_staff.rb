class AddActivityCounterToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :activity_counter, :integer, default: 0
  end
end
