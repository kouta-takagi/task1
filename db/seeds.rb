# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ASSIGNMENT = [ "Manager", "Team Leader", "Supervisor", "Senior Analyst", "Associate" ]

Department.create!(name: "sales")
Department.create!(name: "marketing")
Department.create!(name: "engineer")
Department.create!(name: "customer_service")
Department.create!(name: "human-resources")

Department.all.each do |department|
  3.times do
    department.employees.create!(name: Faker::Name.unique.name, age: rand(20..40))
  end
end

5.times do |i|
  Project.create!(name: "project#{i}", start_date: Faker::Date.between(from: '2024-01-01', to: '2024-12-31'))
end

Employee.all.each do |employee|
  Assignment.create!(employee: employee, project: Project.find(rand(1..5)), role: ASSIGNMENT[rand(0..4)])
end
