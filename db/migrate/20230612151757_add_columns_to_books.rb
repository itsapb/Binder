class AddColumnsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :currently_reading, :boolean
    add_reference :books, :book_temps, null: false, foreign_key: true
  end
end
