class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = current_user.chatrooms
  end

  def create
    user = User.find(params[:user_id])

    if @chatroom = current_user.chatrooms.find { |chatroom| chatroom.users.include?(user) }
      redirect_to chatroom_path(@chatroom)
    else
      @chatroom = Chatroom.new(name: "#{user.first_name}")
      current_user.chatrooms << @chatroom
      user.chatrooms << @chatroom
      @chatroom.save
      InboxChannel.broadcast_to(
        user,
        render_to_string(partial: "chatrooms/chat_preview", locals: {chatroom: @chatroom})
      )
      redirect_to chatroom_path(@chatroom)
    end
  end
end
