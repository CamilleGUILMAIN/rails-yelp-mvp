# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
#["chinese", "italian", "japanese", "french", "belgian"]
puts "Creation de 5 restos :"
Restaurant.create(name: "Restaurant 1", address: "Lille", phone_number: "0625252623", category: "chinese")
Restaurant.create(name: "Restaurant 2", address: "Lille", phone_number: "0625252426", category: "italian")
Restaurant.create(name: "Restaurant 3", address: "Paris", phone_number: "0758596523", category: "chinese")
Restaurant.create(name: "Restaurant 4", address: "Marseille", phone_number: "0145236589", category: "french")
Restaurant.create(name: "Restaurant 5", address: "Lyon", phone_number: "0102050408", category: "belgian")
