# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Fantasy", "Sci-Fi", "Romance", "Comedy", "Non-Fiction", "Other"]

if Genre.count == 0
    genres.each do |genre|
        Genre.create(genre: genre)
        puts "created #{genre}"
    end
end
