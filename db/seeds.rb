# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = %w[sets parts figures gear books instructions original\ boxes]

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "Category #{category} has been created"
  end
end

if User.count ==0
  User.create(email: 'test@email.com', password: "password")
  puts "Created user"
end