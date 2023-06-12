class Business::ChatsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_owner!

  def index
    @chats = Chatroom.where(owner_id: current_owner.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
