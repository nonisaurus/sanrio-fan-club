class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :character_cards, dependent: :destroy

  validates :email, presence: true, uniqueness: true

  after_create :protected_character_cards

  private

  def protected_character_cards
      unless character_cards.exists?
        character_cards.create(name: "Hello Kitty",  birthday: "1 November", location: "London, England",   fav_food: "Apple pie",  fave_colour: "red",   image: "https://upload.wikimedia.org/wikipedia/en/0/05/Hello_kitty_character_portrait.png",   protected: true)
        character_cards.create(name: "My Melody",   birthday: "January 18", location: "Mary Land",   fav_food: "Almond pound cake",   fave_colour: "Pink",   image: "https://i.pinimg.com/564x/f0/73/93/f0739363ac24c6c52465ec602b0d65de.jpg",  protected: true)
        character_cards.create(name: "Gudetama",   birthday: "November 3",  location: "Japan",  fav_food: "Rice, bacon", fave_colour: "Yellow",  image: "https://i.pinimg.com/564x/47/63/8a/47638a7d1c2a2d505eed34a959d1e883.jpg",  protected: true)
        character_cards.create(name: "Little Twin Stars",  birthday: "December 24", location: "The Starry Sky",  fav_food: "Marshmallows", fave_colour: "Pink and blue", image: "https://i.pinimg.com/564x/75/38/64/7538641e44d0d7cae6f61dbc1463284c.jpg", protected: true)
        character_cards.create(name: "Cinnamoroll", birthday: "March 6", location: "Sky", fav_food: "Cinnamon rolls", fave_colour: "Light blue", image: "https://i.pinimg.com/564x/fa/b3/4f/fab34fd87f97b37606633dc8fe0bbceb.jpg", protected: true)
    end
  end
end
