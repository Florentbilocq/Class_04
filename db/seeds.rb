# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Student.destroy_all
#Crée 10 cours random
10.times do
  course = Course.create!(title: Faker::ProgrammingLanguage.name, description: Faker::Markdown.emphasis)
end
#Crée 40 étudiants random et leur attribue un cours
40.times do
  student = Student.create!(name: Faker::Zelda.character, course: Course.find(rand(1..10)))
end
