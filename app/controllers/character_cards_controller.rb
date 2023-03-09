class CharacterCardsController < ApplicationController
    before_action :authenticate_user!

    def index
        @character_cards = current_user.character_cards.all
    end

    def show
        @character_card = CharacterCard.find(params[:id])
    end
  
    def new
        @character_card = CharacterCard.new
    end
  
    def edit
        @character_card = CharacterCard.find(params[:id])
    end
  
    def create 
        @character_card = current_user.character_cards.build(character_card_params)
        if @character_card.save
          redirect_to character_cards_path, notice: 'Character card was successfully created.'
        else
          render :new
        end
    end
  
    def update
        @character_card = CharacterCard.find(params[:id])
        @character_card.update!(params.require(:character_card).permit(:name, :birthday, :location, :fav_food, :fave_colour))
        redirect_to character_cards_path, notice: 'Character card was successfully updated.'

    end

    def destroy
        @character_card = CharacterCard.find(params[:id])
        if @character_card.protected?
          flash[:error] = "This character card is protected and cannot be deleted."
        else
          @character_card.destroy
          flash[:success] = "Character card was successfully deleted."
        end
        redirect_to character_cards_path
    end

    private

    def character_card_params
        params.require(:character_card).permit(:name, :birthday, :location, :fav_food, :fave_colour)
    end
end
