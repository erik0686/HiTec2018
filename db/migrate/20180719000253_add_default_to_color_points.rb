class AddDefaultToColorPoints < ActiveRecord::Migration[5.1]
  def change
  	change_column :colors, :points, :integer, :default => 0
  end
end
