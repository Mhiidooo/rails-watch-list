class Bookmark < ApplicationRecord
  # associations:
  belongs_to :movie
  belongs_to :list

  # validation:
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
