class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # Aqui, se apagar uma lista, apago as bookmarks. Se não puser essa linha,
  # caso tente apagar uma lista, não consigo apagar se já tiver uma bookmark.
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end
