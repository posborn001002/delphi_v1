class CreateMetrics < ActiveRecord::Migration[5.1]
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :datatype

      t.timestamps
    end
  end
end
