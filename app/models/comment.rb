class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie_room

  validates :content, presence: true
end
