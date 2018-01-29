class CreatePainObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :pain_observations do |t|
      t.references :PointOfPain, foreign_key: true
      t.references :JobProgress, foreign_key: true
      t.integer :pass_fail

      t.timestamps
    end
  end
end
