class BookTemp < ApplicationRecord
  has_one_attached :photo
  has_many :books
  attribute :google_photo, :string
  has_many :reviews, dependent: :destroy
  validates :title, :author, presence: true
end
