class Employee < ApplicationRecord
  belongs_to :department
  has_many :assignments
  has_many :projects, through: :assignmentsend

  scope :young, -> { where("age < ?", 30) }
  scope :assign, ->(assign) { joins(:assignments).where(assignments: { role: assign }) } # 意味あんのか？
  scope :dep_count, -> { all.joins(:department).pluck("departments.name").tally }
end
