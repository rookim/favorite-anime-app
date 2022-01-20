class Anime < ApplicationRecord
  validates :title, :creator, :genre, :demographic, :original, :japanese_title, :premiered, presence: true
end
