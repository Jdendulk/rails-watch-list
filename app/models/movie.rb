class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  # validates_associated :bookmarks
  # validates_associated :list
  validates :overview, presence: true
  validates :title, presence: true, uniqueness: true
end
