class AddHaveReadToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :have_read, :boolean
  end
end
