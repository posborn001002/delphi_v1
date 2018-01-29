class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.references :Organization, foreign_key: true
      t.string :job_title

      t.timestamps
    end
  end
end
