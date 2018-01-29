json.extract! pain_observation, :id, :PointOfPain_id, :JobProgress_id, :pass_fail, :created_at, :updated_at
json.url pain_observation_url(pain_observation, format: :json)
