class MessagesController < ApplicationController
  before_action :require_user
  
  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save 
      ActionCable.server.broadcast("chatroom_channel", { username: current_user.username, body: @message.body })
    end
  end

  private 

  def message_params 
    params.require(:message).permit(:body)
  end

end