class CustomerJobActionResults < ApplicationRecord
  belongs_to :CustomerJob
  belongs_to :ActionResults
end
