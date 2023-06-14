class BookTemp < ApplicationRecord
  has_many :bookings
  validates :title, :author, :description, :isbn, presence: true
  validates :isbn, uniqueness: true
end
