class AddReferencesAndPoints < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :building, foreign_key: true
    add_column :buildings, :points, :integer
    add_column :colors, :points, :integer
  end
end
