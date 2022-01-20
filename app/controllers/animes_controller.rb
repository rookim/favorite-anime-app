class AnimesController < ApplicationController

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
    if new_anime.save
      render json: new_anime.as_json
    else
      render json: {errors: new_anime.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    render json: Anime.find(params[:id])
  end

end
