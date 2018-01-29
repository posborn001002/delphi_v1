class CreatePtWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :pt_workshops do |t|
      t.date :date
      t.references :Person, foreign_key: true

      t.timestamps
    end
  end
end
