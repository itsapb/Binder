class Renameisbn < ActiveRecord::Migration[7.0]
  def change
    rename_column(:books, :ISBN, :isbn)
    rename_column(:book_temps, :ISBN, :isbn)
  end
end
