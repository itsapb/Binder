class Review < ApplicationRecord
  belongs_to :book_temps
  belongs_to :user
  validates :rating, presence: true
end
