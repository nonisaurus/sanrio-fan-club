class CharacterCardsController < ApplicationController
    before_action :authenticate_user!, only: [:cards]

    def cards
        @character_cards = CharacterCard.all
    end
end
