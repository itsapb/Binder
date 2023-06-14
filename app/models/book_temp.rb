class BookTemp < ApplicationRecord
  validates :title, :author, :description, :isbn, presence: true
  validates :isbn, uniqueness: true

  include PgSearch::Model

  pg_search_scope :search_by_title_and_author,
    against: [ :title, :author ],
    using: {
      tsearch: { prefix: true }
    }
end
