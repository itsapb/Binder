class Message < ApplicationRecord
  belongs_to :chatrooms
  belongs_to :user
end
