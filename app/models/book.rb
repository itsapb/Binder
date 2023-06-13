class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_temp
  validates :author, :title, :description, :ISBN, presence: true
  validates :ISBN, uniqueness: true
end
