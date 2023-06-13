class BookTemp < ApplicationRecord
  validates :title, :author, :description, :ISBN, presence: true
  validates :ISBN, uniqueness: true
end
