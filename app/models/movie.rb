class Movie < ApplicationRecord
  # associations:
  has_many :bookmarks
  # Validation:
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end

# A movie must have a unique title and an overview.
