class CreateAssistances < ActiveRecord::Migration[5.1]
  def change
    create_table :assistances do |t|
      t.string :name

      t.timestamps
    end
  end
end
