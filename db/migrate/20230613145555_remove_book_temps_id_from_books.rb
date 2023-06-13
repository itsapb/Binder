class RemoveBookTempsIdFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :books, :book_temps, null: false, foreign_key: true
  end
end
