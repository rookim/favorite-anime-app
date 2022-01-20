class AnimesController < ApplicationController
  validates :title, :creator, :genre, :demographic, :original, presence: true
  
  def index
    anime = Anime.all
    render json: anime.as_json
  end

  def create
    new_anime = Anime.new(
      "title": params[:title],
      "creator": params[:creator],
      "genre": params[:genre],
      "demographic": params[:demographic],
      "original": params[:original]
    )
    new_anime.save
    render json: new_anime.as_json
  end
end
