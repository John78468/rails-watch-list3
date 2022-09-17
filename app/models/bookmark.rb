class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie, scop: [:list_id]
  validates :comment, length: { minimum: 6}
end
