class CreatePoPObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :po_p_observations do |t|
      t.references :DateLookup, foreign_key: true
      t.integer :pass_fail

      t.timestamps
    end
  end
end
