class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.references :DateLookup, foreign_key: true
      t.references :Person, foreign_key: true
      t.string :attachment
      t.text :text

      t.timestamps
    end
  end
end
