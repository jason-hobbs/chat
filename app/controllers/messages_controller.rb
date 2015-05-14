class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.save
    #@message = Message.create!(message_params)
  end

  private

    def message_params
        params.require(:message).permit(:content)
    end
end
