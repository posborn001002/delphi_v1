class CreateCustomerJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_jobs do |t|
      t.string :job_reference
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
