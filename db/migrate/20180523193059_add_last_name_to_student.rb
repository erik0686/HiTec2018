class AddLastNameToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :last_name, :string
  end
end
