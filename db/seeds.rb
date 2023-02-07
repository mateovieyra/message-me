# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "Elliot", password: "12345")
User.create(username: "Steve", password: "12345")

Message.create(body: "Hello everyone!", user_id: 2)
Message.create(body: "Hiiii!", user_id: 1)
Message.create(body: "How it's going?", user_id: 3)
