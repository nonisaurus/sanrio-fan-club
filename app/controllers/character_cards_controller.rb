class CharacterCardsController < ApplicationController
    before_action :authenticate_user!, only: [:cards, :show]

    def cards
        @character_cards = CharacterCard.all
    end

    def show
        @character_card = CharacterCard.find(params[:id])
    end
  
    def new
      @character_card = CharacterCard.new
    end
  
    def edit
    end
  
    def create
      @character_card = CharacterCard.new()
      if @character_card.save
        redirect_to @character_card, notice: 'Character card was successfully created.'
      else
        render :new
      end
    end
  
    def update
      if @character_card.update()
        redirect_to @character_card, notice: 'Character card was successfully updated.'
      else
        render :edit
      end
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

    private

    def set_character_card
    @character_card = CharacterCard.find(params[:id])
    end

end
