class Book < ApplicationRecord
    has_many :users, through: :user_books
    has_many :user_books

    validates :title, presence: true # title must be present
<<<<<<< HEAD
    # validates :author, presence: true # author must be present
    # validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true # price must be non-negative if present
    # validates :published_date, presence: true, if: -> { author.present? } # published_date is required if author is present
=======
    validates :author, presence: true # author must be present
    validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true # price must be non-negative if present
    validates :published_date, presence: true, if: -> { author.present? } # published_date is required if author is present
>>>>>>> 621d41e979d62d624240d65345b753627f0ddbf8
    
    belongs_to :category, optional: true
end
