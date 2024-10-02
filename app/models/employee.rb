class Employee < ApplicationRecord
  belongs_to :department
  has_many :assignments
  has_many :projects, through: :assignmentsend
end
