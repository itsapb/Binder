class Isbntostring < ActiveRecord::Migration[7.0]
  def change
    change_column(:books, :isbn, :string)
    change_column(:book_temps, :isbn, :string)
  end
end
