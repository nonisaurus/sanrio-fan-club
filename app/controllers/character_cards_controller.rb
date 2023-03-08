class CharacterCardsController < ApplicationController
    before_action :authenticate_user!, only: [:cards, :show, :new, :create, :delete]

    def cards
        @character_cards = CharacterCard.all
    end

    def show
        if params[:id] == "new"
            redirect_to new_character_card_path
        else
            @character_card = CharacterCard.find(params[:id])
        end
    end
  
    def new
        @character_card = CharacterCard.new
    end
  
    def edit
    end
  
    def create
        @character_card = CharacterCard.new(character_card_params)

        if @character_card.save
            redirect_to @character_card
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
