class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_temps
  validates :author, :title, :description, :ISBN, presence: true
  validates :ISBN, uniqueness: true
end
