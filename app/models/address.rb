class Address < ApplicationRecord
  has_many :students
  has_many :admins
  has_many :instructors
end
