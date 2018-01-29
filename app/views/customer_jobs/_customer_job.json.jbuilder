json.extract! customer_job, :id, :job_reference, :name, :description, :status, :created_at, :updated_at
json.url customer_job_url(customer_job, format: :json)
