class Review < ApplicationRecord
  belongs_to :book_temp
  belongs_to :user
  validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  validates :rating, :presence => { :message => " cannot be blank" }
end
