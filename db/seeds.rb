# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Don't use .create since we are not sure if we want to save yet
new_projects = [
  Project.new(name: "Ironhack", description: "The best coding school."),
  Project.new(name: "Wendy's", description: "Okay burgers. Extremely unhealthy."),
  Project.new(name: "Toasted", description: "Website for toasted."),
  Project.new(name: "Building.co", description: "Events with Building.co."),
]

new_projects.each do |proj|
  # Check if project already exists
  if Project.find_by(name: proj.name) == nil
    # If it doesn't exist (nil), save it
    puts "Creating Project: #{proj.name}"
    proj.save
  end
end

puts "Seeds end!"
