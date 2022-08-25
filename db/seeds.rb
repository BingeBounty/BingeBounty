# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

u = User.create(password: "test12345689", username: "test", email: "test@test.com")

Article.create(user: u, title: "How css was weaponized", body: "
    Did you know css is turning complete? Yes it is!
    So having control over the css is basically an RCE. This was used in the iOS 0day to root smart apple fridges.")

10.times do
    body = ""
    10.times do
    body += Faker::Hacker.say_something_smart
    end
    Article.create(user: u, title: Faker::Hacker.noun + " " + Faker::Hacker.verb, body: body)
end
