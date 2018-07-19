class AddDefaultToBuildingPoints < ActiveRecord::Migration[5.1]
  def change
  	change_column :buildings, :points, :integer, :default => 0
  end
end
