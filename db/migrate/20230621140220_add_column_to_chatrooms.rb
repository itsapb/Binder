class AddColumnToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :friend, :integer
  end
end
