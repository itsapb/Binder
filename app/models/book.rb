class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_temp
  has_one_attached :photo
  validates :author, :title, :description, presence: true
  enum status: [:unread, :reading, :read, :borrowed]
  has_many :drops
end
