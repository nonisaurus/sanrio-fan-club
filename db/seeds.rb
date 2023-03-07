# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create( first_name: "noni",  last_name: "summers",   username: "noni", email: "noni@test.com", password: "123456789")
User.create( first_name: "pickles",   last_name: "summers",   username: "pickles", email: "pickles@test.com" , password: "123456789")

CharacterCard.create!(user_id: User.first.id, name: "Hello Kitty",  birthday: "1 November", location: "London, England",   fav_food: "Apple pie",  fave_colour: "red",   image: "https://upload.wikimedia.org/wikipedia/en/0/05/Hello_kitty_character_portrait.png",   protected: true)
CharacterCard.create!(user_id: User.first.id, name: "Dear Daniel",   birthday: "August 25", location: "London, England",  fav_food: "apple pie",  fave_colour: "blue",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Dear_Daniel_character_portrait.png/220px-Dear_Daniel_character_portrait.png", protected: true)
