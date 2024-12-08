class MovieRoom < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :movie_title, presence: true
end
