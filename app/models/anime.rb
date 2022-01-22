class Anime < ApplicationRecord
  validates :title, :creator, :genre, :demographic, :japanese_title, :premiered, presence: true
  validates :original, inclusion: { in: [true, false], message: "only accepts boolean values true or false."}

end
