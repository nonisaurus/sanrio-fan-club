class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_message, only: [:destroy]

    def index
      @message = Message.new
      @messages = Message.all.order(created_at: :desc)
    end
  
    def create
      @message = current_user.messages.build(message_params)
      @message.save
      redirect_to messages_path
    end
  
    def destroy
      @message.destroy
      redirect_to messages_path
    end
  
    private
  
    def set_message
      @message = current_user.messages.find(params[:id])
    end
  
    def message_params
      params.require(:message).permit(:message)
    end
end
