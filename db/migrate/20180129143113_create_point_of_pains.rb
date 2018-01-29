class CreatePointOfPains < ActiveRecord::Migration[5.1]
  def change
    create_table :point_of_pains do |t|
      t.text :description
      t.belongs_to :PTWorkshop, foreign_key: true

      t.timestamps
    end
  end
end
