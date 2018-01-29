Rails.application.routes.draw do
  resources :pain_observations
  resources :customer_job_action_results
  resources :date_lookups
  resources :organizations
  resources :po_p_observations
  resources :measurements
  resources :lookups
  resources :job_progresses
  resources :metrics
  resources :toe_tags
  resources :people
  resources :updates
  resources :customer_jobs
  resources :pt_workshops
  resources :point_of_pains
  resources :action_results
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
