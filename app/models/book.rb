class Book < ApplicationRecord
    validates :title, presence: true # title must be present
    # validates :author, presence: true # author must be present
    # validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true # price must be non-negative if present
    # validates :published_date, presence: true, if: -> { author.present? } # published_date is required if author is present
    
    belongs_to :category, optional: true
end
