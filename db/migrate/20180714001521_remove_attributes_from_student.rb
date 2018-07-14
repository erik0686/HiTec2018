class RemoveAttributesFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :name
    remove_column :students, :register_id
    remove_column :students, :email
    remove_column :students, :vegan
    remove_column :students, :last_name
  end
end
