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

categories = ["Software Development", "Cyber Security", "Graphics Design", "Tech & Business"]


authors = []
6.times do
    authors << Author.create!(
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        image_url: Faker::Avatar.image,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end


posts = []
6.times do
    posts << Post.create!(
        author_id: authors.sample.id,
        title: Faker::Lorem.sentence,
        image_url: Faker::Avatar.image,
        category: categories.sample,
        content: Faker::Lorem.paragraph(sentence_count: rand(30..60))
    )
end
    




puts "✅ Done seeding"