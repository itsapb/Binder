class AddDroppableToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :droppable, :boolean
  end
end
