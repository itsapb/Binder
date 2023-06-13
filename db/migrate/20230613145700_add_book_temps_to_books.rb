class AddBookTempsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :book_temp, null: false, foreign_key: true
  end
end
