class CreateBookTemps < ActiveRecord::Migration[7.0]
  def change
    create_table :book_temps do |t|
      t.string :title
      t.string :author
      t.string :description
      t.integer :ISBN

      t.timestamps
    end
  end
end
