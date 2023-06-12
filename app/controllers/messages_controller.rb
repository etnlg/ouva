class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    if current_user.nil?
      @message.owner_id = current_owner.id
      @message.save!
      redirect_to business_chat_path(@chatroom)
    else
      @message.user_id = current_user.id
      @message.save!
      redirect_to chatroom_path(@chatroom)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
