class Message < ApplicationRecord
  belongs_to :user
  belongs_to :drop
  belongs_to :chatroom
  validates :content, presence: true
end
