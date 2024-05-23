class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates_associated :bookmarks
  validates_associated :movies
  validates :name, presence: true, allow_blank: false, uniqueness: true

end
