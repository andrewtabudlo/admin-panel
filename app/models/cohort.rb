class Cohort < ApplicationRecord
  has_one :course
  has_one :instructor
end
