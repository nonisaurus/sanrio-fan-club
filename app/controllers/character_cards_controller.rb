class CharacterCardsController < ApplicationController
    before_action :authenticate_user!, only: [:cards, :show, :new, :create, :delete]

    def index
        @character_cards = CharacterCard.all
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
        @character_card.create(character_card_params)
        redirect_to character_cards_path, notice: 'Character card was successfully created.'
    end
  
    def update
        @character_card = CharacterCard.find(params[:id])
        # @character_card.update(params[:id])
        redirect_to @character_card, notice: 'Character card was successfully updated.'
    end

    def destroy
        @character_card = CharacterCard.find(params[:id])
        if @character_card.is_protected?
          flash[:error] = "This character card is protected and cannot be deleted."
        else
          @character_card.destroy
          flash[:success] = "Character card was successfully deleted."
        end
        redirect_to character_cards_path
    end

    # private

    def set_character_card
    @character_card = CharacterCard.find(params[:id])
    end



end
