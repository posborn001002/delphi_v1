class CreateToeTags < ActiveRecord::Migration[5.1]
  def change
    create_table :toe_tags do |t|
      t.integer :priority
      t.references :Person, foreign_key: true

      t.timestamps
    end
  end
end
