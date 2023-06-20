class BookTemp < ApplicationRecord
  has_one_attached :photo
  has_many :books
  has_many :reviews, dependent: :destroy
  validates :title, :author, presence: true
end
