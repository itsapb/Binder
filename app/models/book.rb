require 'open-uri'

class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_temp
  has_one_attached :photo
  validates :author, :title, :description, presence: true
  enum status: [:unread, :reading, :read, :borrowed]
  has_many :drops
  attribute :google_photo, :string
  after_create :save_photo, if: -> { google_photo? && !photo.attached? }

  def save_photo
    file = URI.open(google_photo)
    photo.attach(io: file, filename: "book_images.jpeg", content_type: "image/jpeg")
  end
end
