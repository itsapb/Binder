class RemoveColumnsFromDrops < ActiveRecord::Migration[7.0]
  def change
    remove_column :drops, :have_read, :boolean
    remove_column :drops, :droppable, :boolean
  end
end
