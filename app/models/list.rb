class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  #Validation:
  validates :name, uniqueness: true, presence: true
end


#A list must have a unique name.
