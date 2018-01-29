class CreateJobProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :job_progresses do |t|
      t.references :CustomerJob, foreign_key: true
      t.references :ActionResult, foreign_key: true
      t.references :Lookup, foreign_key: true

      t.timestamps
    end
  end
end
