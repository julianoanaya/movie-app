# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
actor = Actor.new({first_name: "Ryan", last_name: "Renynolds", known_for: "Deadpool"})
actor.save
actor = Actor.new({first_name: "Andrew", last_name: "Garfield", known_for: "Spider-Man"})
actor.save
actor = Actor.new({first_name: "Robert", last_name: "Pattinson", known_for: "The Batman"})
actor.save