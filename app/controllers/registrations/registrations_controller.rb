# frozen_string_literal: true

class Registrations::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super 
    resource.save!
    resource.character_cards.create(
      name: "Hello Kitty",
      birthday: "1 November",
      location: "London, England",
      fav_food: "Apple pie",
      fave_colour: "red",
      image: "https://upload.wikimedia.org/wikipedia/en/0/05/Hello_kitty_character_portrait.png",
      protected: true
    )
    
    resource.character_cards.create(
      name: "My Melody",
      birthday: "January 18",
      location: "Mary Land",
      fav_food: "Almond pound cake",
      fave_colour: "Pink",
      image: "https://i.pinimg.com/564x/f0/73/93/f0739363ac24c6c52465ec602b0d65de.jpg",
      protected: true
    )
    
    resource.character_cards.create(
      name: "Gudetama",
      birthday: "November 3",
      location: "Japan",
      fav_food: "Rice, bacon",
      fave_colour: "Yellow",
      image: "https://i.pinimg.com/564x/47/63/8a/47638a7d1c2a2d505eed34a959d1e883.jpg",
      protected: true
    )
    
    resource.character_cards.create(
      name: "Little Twin Stars",
      birthday: "December 24",
      location: "The Starry Sky",
      fav_food: "Marshmallows",
      fave_colour: "Pink and blue",
      image: "https://i.pinimg.com/564x/75/38/64/7538641e44d0d7cae6f61dbc1463284c.jpg",
      protected: true
    )
    
    resource.character_cards.create(
      name: "Cinnamoroll",
      birthday: "March 6",
      location: "Sky",
      fav_food: "Cinnamon rolls",
      fave_colour: "Light blue",
      image: "https://i.pinimg.com/564x/fa/b3/4f/fab34fd87f97b37606633dc8fe0bbceb.jpg",
      protected: true
    )
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
