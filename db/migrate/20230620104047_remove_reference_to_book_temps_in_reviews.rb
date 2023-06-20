class RemoveReferenceToBookTempsInReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :book_temps
    add_reference :reviews, :book_temp
  end
end
