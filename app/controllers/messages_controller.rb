class MessagesController < ApplicationController
    before_action :authenticate_user!, only: [:chat]

    def chat

    end
end
