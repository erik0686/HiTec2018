class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :register_id
      t.string :email
      t.string :career
      t.boolean :vegan

      t.timestamps
    end
  end
end
