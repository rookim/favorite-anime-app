class Anime < ApplicationRecord
  validates :title, :creator, :genre, :demographic, :original, presence: true
end
