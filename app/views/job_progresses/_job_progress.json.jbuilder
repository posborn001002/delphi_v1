json.extract! job_progress, :id, :CustomerJob_id, :ActionResult_id, :Lookup_id, :created_at, :updated_at
json.url job_progress_url(job_progress, format: :json)
