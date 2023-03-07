class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :character_cards, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  private

  def create_character_cards
    cards_to_create = [
      {name: "Hello Kitty", birthday: "November 1", location: "London", fav_food: "Apple pie", fave_colour: "Red", image: "hello_kitty.png" },
      {name: "Dear Daniel",   birthday: "August 25", location: "London, England",  fav_food: "apple pie",  fave_colour: "blue",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Dear_Daniel_character_portrait.png/220px-Dear_Daniel_character_portrait.png", protected: true},
      {name: "My Melody",   birthday: "January 18", location: "Mary Land",   fav_food: "Almond pound cake",   fave_colour: "Pink",   image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/My_Melody.svg/1200px-My_Melody.svg.png",  protected: true},
      {name: "Kuromi",  birthday: "October 31",  location: "Sweetland",  fav_food: "Black currant jam",  fave_colour: "Black",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Kuromi.svg/1200px-Kuromi.svg.png",  protected: true},
      {name: "Gudetama",   birthday: "November 3",  location: "Japan",  fav_food: "Rice, bacon", fave_colour: "Yellow",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gudetama.png/1200px-Gudetama.png",  protected: true},
      {name: "Pompompurin", birthday: "April 16",  location: "Milk Land", fav_food: "Pudding", fave_colour: "Golden yellow", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Pompompurin.svg/1200px-Pompompurin.svg.png", protected: true},
      {name: "Keroppi",   birthday: "July 10",  location: "Donut Pond",  fav_food: "Rice balls",  fave_colour: "Green",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Keroppi.svg/1200px-Keroppi.svg.png", protected: true},
      {name: "Little Twin Stars",  birthday: "December 24", location: "The Starry Sky",  fav_food: "Marshmallows", fave_colour: "Pink and blue", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Little_Twin_Stars.svg/1200px-Little_Twin_Stars.svg.png", protected: true},
      {name: "Rilakkuma",  birthday: "November 21",  location: "Forest",  fav_food: "Pancakes", fave_colour: "Brown",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Rilakkuma.png/1200px-Rilakkuma.png", protected: true},
      {name: "Cinnamoroll", birthday: "March 6", location: "Sky", fav_food: "Cinnamon rolls", fave_colour: "Light blue", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Cinnamoroll.svg/1200px-Cinnamoroll.svg.png", protected: true}
      
    ]

    # Create the character cards
    cards_to_create.each do |card_attributes|
      character_cards.create(card_attributes)
    end
  end
end
