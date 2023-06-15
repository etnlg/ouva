class ChatroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user_id = current_user.id
    @chatroom.owner_id = params[:owner_id]
    @chatroom.save!
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.where(user_id: current_user.id)
  end

  private

  def chatroom_params
    params.permit(:name, :owner_id)
  end

end
