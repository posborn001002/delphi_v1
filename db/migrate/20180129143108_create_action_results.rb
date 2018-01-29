class CreateActionResults < ActiveRecord::Migration[5.1]
  def change
    create_table :action_results do |t|
      t.integer :number
      t.string :action
      t.string :result

      t.timestamps
    end
    add_index :action_results, :number
  end
end
