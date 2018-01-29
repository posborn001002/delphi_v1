class JobProgress < ApplicationRecord
  belongs_to :CustomerJob
  belongs_to :ActionResult
  belongs_to :Lookup
end
