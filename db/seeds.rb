# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
Author.destroy_all

puts "🌱 Seeding data.."

# categories = ["Software Development", "Cyber Security", "Graphics Design", "Tech & Business"]

posts = []
10.times do
    posts << Post.create(
        title: Faker::Lorem.sentence,
        image_url: Faker::LoremFlickr.image,
        content: Faker::Lorem.paragraphs
    )
end

authors = []
5.times do
    authors << Author.create!(
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

    
# tags = []
# 10.times do
#     tags << Tag.create(Faker::Lorem.word)
# end






puts "✅ Done seeding"