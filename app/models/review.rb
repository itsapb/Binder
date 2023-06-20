class Review < ApplicationRecord
  belongs_to :book_temp
  belongs_to :user
end
