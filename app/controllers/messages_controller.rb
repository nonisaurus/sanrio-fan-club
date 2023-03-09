class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_message


    def index
      @messages = Message.all
    end

end
