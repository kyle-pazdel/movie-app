# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "ffaker"

# 15.times do
#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     favorite_animal: FFaker::AnimalUS.common_name,
#     gender: FFaker::Gender.random,
#     known_for: FFaker::Movie.title,
#     age: FFaker::PhoneNumberCU.phone_prefix,
#   )
# end

# MOVIE SEEDS

# Movie.create(title: "The Matrix", year: 1999, plot: "It depicts a dystopian future in which humanity is unknowingly trapped inside a simulated reality, the Matrix, which intelligent machines have created to distract humans while using their bodies as an energy source.", director: "Lana and Lily Wachowski")

# 5.times do
#   Movie.create(
#     title: FFaker::Movie.title,
#     year: FFaker::Vehicle.year,
#     plot: FFaker::Book.description,
#     director: FFaker::Name.name,
#   )
# end

Genre.create(
  name: "Sci-Fi",
)
Genre.create(
  name: "Fantasy",
)
Genre.create(
  name: "Drama",
)
