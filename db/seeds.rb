# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create({email: "victor@gmail.com", password: "123456"})
user2 = User.create({email: "bruk@gmail.com", password: "123456"})
user3 = User.create({email: "gideon@gmail.com", password: "123456"})


rental1 = Rental.create({car_brand: "Rolls-Royce", rent_date: DateTime.new(2021, 02, 26), number_of_days: 4, location: 'Lagos'})
rental2 = Rental.create({car_brand: "Bentley", rent_date: Date.new(2022, 02, 06), number_of_days: 5, location: 'Abuja'})
rental3 = Rental.create({ car_brand: "Mercedes-s", rent_date: Date.new(2023, 02, 06), number_of_days: 6, location: 'Mecca'})
rental4 = Rental.create({car_brand: "Toyota century",  rent_date: Date.new(2024, 02, 06), number_of_days: 7, location: 'Jos'})
