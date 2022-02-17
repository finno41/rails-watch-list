# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "running..."
20.times do
  movie_title = Faker::Movie.title
  movie_overview = Faker::Hipster.paragraphs(number: 4)
  movie_poster_url = "https://picsum.photos/382/574"
  rating = rand(0.0..10.0).round(1)

  Movie.create(title: movie_title, overview: movie_overview, poster_url: movie_poster_url, rating: rating)
  puts movie_title
end
puts "done"
