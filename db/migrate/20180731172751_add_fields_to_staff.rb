class AddFieldsToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :sex, :string
    add_column :staffs, :name, :string
    add_column :staffs, :last_name_1, :string
    add_column :staffs, :last_name_2, :string
    add_column :staffs, :career, :string
  end
end
