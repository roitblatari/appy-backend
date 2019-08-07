# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_one = User.create(username: "ari", email: "ari@gmail", password: "123", image_url: "#")
user_two = User.create(username: "zac", email: "zac@gmail", password: "123", image_url: "#")
user_3 =   User.create(username: "zalmy", email: "zalmy@gmail", password: "123", image_url: "#")
chaim  = User.create(username: "chaim", email: "chaimy@gmail", password: "123", image_url: "#")
sholom = User.create(username: "sholom", email: "sholom@gmail", password: "123", image_url: "#")

deed_one = Deed.create(title: "Charity", giver_id: "1", receiver_id: user_3.id ,content: "paid his rent", image_url: "#") 
deed2 = user_two.given_deeds.create(title: "heiping hand",receiver_id: "3", content: "I carry his bags", image_url: "#")
deed3 = sholom.given_deeds.create(title: "helping hand",receiver_id: "4", content: "I carry his bags", image_url: "#")
