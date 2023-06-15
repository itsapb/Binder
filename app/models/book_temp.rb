class BookTemp < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  has_many :books
  validates :title,
   :author,
   # :description,
   presence: true
end
