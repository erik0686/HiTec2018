class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :matricula
      t.string :role
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
