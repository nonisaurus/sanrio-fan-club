class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :character_cards, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  after_create :create_character_cards

  private

  def create_character_cards
    cards_to_create = [
      {name: "Hello Kitty", birthday: "November 1", location: "London", fav_food: "Apple pie", fave_colour: "Red", image: "hello_kitty.png" },
      {name: "My Melody",   birthday: "January 18", location: "Mary Land",   fav_food: "Almond pound cake",   fave_colour: "Pink",   image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/My_Melody.svg/1200px-My_Melody.svg.png",  protected: true},
      {name: "Gudetama",   birthday: "November 3",  location: "Japan",  fav_food: "Rice, bacon", fave_colour: "Yellow",  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Gudetama.png/1200px-Gudetama.png",  protected: true},
      {name: "Little Twin Stars",  birthday: "December 24", location: "The Starry Sky",  fav_food: "Marshmallows", fave_colour: "Pink and blue", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Little_Twin_Stars.svg/1200px-Little_Twin_Stars.svg.png", protected: true},
      {name: "Cinnamoroll", birthday: "March 6", location: "Sky", fav_food: "Cinnamon rolls", fave_colour: "Light blue", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Cinnamoroll.svg/1200px-Cinnamoroll.svg.png", protected: true}
    ]

    # Create the character cards
    cards_to_create.each do |card_attributes|
      character_cards.create(card_attributes)
    end
  end
end
