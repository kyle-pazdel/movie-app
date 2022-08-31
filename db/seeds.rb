# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Actor.create(
  first_name: "Jane",
  last_name: "Doe",
  known_for: "Mystery Science Theater 3000",
)

Actor.create(
  first_name: "John",
  last_name: "Doe",
  known_for: "Who's Afraid of Virginia Woolf?",
)
