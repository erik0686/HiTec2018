class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
