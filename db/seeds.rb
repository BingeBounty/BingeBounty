# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

u = User.create(password: "81278371823awd", username: "98123u81298eu", email: "ihuawdu@adwawd.aaa")
Article.create(user: u, title: "awiujdia", body: "ajwdiawdoijawdw")
