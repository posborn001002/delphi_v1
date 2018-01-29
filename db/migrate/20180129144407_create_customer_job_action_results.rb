class CreateCustomerJobActionResults < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_job_action_results do |t|
      t.references :CustomerJob, foreign_key: true
      t.references :ActionResults, foreign_key: true

      t.timestamps
    end
  end
end
