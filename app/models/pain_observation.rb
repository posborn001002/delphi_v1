class PainObservation < ApplicationRecord
  belongs_to :PointOfPain
  belongs_to :JobProgress
end
