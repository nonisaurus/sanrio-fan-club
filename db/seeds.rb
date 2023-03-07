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
CharacterCard.create!(user_id: User.first.id, name: "My Melody",   birthday: "January 18", location: "Mary Land",   fav_food: "Almond pound cake",   fave_colour: "Pink",   image: "https://i.pinimg.com/564x/f0/73/93/f0739363ac24c6c52465ec602b0d65de.jpg",  protected: true)
CharacterCard.create!(user_id: User.first.id, name: "Gudetama",   birthday: "November 3",  location: "Japan",  fav_food: "Rice, bacon", fave_colour: "Yellow",  image: "https://i.pinimg.com/564x/47/63/8a/47638a7d1c2a2d505eed34a959d1e883.jpg",  protected: true)
CharacterCard.create!(user_id: User.first.id, name: "Little Twin Stars",  birthday: "December 24", location: "The Starry Sky",  fav_food: "Marshmallows", fave_colour: "Pink and blue", image: "https://i.pinimg.com/564x/75/38/64/7538641e44d0d7cae6f61dbc1463284c.jpg", protected: true)
CharacterCard.create!(user_id: User.first.id, name: "Cinnamoroll", birthday: "March 6", location: "Sky", fav_food: "Cinnamon rolls", fave_colour: "Light blue", image: "https://i.pinimg.com/564x/fa/b3/4f/fab34fd87f97b37606633dc8fe0bbceb.jpg", protected: true)