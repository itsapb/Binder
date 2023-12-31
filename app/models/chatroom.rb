class Chatroom < ApplicationRecord
  has_many :messages
  has_many :user_chatrooms
  has_many :users, through: :user_chatrooms

  def other_user(current_user)
    users.where.not(id: current_user.id).first
  end
end
