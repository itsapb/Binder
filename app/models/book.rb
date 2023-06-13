class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_temp
  validates :author, :title, :description, :isbn, presence: true
  validates :isbn, uniqueness: true
end
