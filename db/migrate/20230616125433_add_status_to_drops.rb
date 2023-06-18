class AddStatusToDrops < ActiveRecord::Migration[7.0]
  def change
    add_column :drops, :status, :boolean
  end
end
