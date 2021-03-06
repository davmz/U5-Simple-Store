# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

676.times do
  product = Product.create(
    title: Faker::Commerce.unique.product_name,
    description: "This product made up of #{Faker::Commerce.material} is from #{Faker::Commerce.brand} sold by #{Faker::Commerce.vendor} in #{Faker::Commerce.color} color.",
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.number(digits: 3)
  )
end

puts "Created #{Product.count} Products"
