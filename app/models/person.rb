class Person < ApplicationRecord
  belongs_to :Organization
  has_secure_password
end
