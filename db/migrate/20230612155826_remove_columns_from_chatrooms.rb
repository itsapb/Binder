class RemoveColumnsFromChatrooms < ActiveRecord::Migration[7.0]
  def change
    remove_reference :chatrooms, :user, null: false, foreign_key: true
    remove_reference :chatrooms, :message, null: false, foreign_key: true
  end
end
