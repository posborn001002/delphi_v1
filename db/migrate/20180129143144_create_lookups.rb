class CreateLookups < ActiveRecord::Migration[5.1]
  def change
    create_table :lookups do |t|
      t.string :name
      t.string :datatype
      t.string :type

      t.timestamps
    end
  end
end
