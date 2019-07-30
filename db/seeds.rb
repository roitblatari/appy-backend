# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_one = User.create(username: "ari", email: "ari@gmail", password: "123", image_url: "#")
user_two = User.create(username: "zac", email: "zac@gmail", password: "123", image_url: "#")

deed_one = Deed.create(title: "Charity", giver_id: "8", receiver_id: "9",content: "paid his rent", image_url: "#") 