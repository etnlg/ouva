class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    if current_user.nil?
      @message.owner_id = current_owner.id
      @username = current_owner.username
      @message.save!
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message, username: @username})
      )
      head :ok
    else
      @message.user_id = current_user.id
      @username = current_user.username
      @message.save!
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message, username: @username})
      )
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
