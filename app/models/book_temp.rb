class BookTemp < ApplicationRecord
  has_one_attached :photo
  has_many :books
  validates :title, :author, :description, :isbn, presence: true
  validates :isbn, uniqueness: true
end
