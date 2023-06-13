class BookTemp < ApplicationRecord
  validates :title, :author, :description, :isbn, presence: true
  validates :isbn, uniqueness: true
end
