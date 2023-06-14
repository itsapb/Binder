class BookTemp < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  validates :title, :author, :description, :isbn, presence: true
  validates :isbn, uniqueness: true
end
