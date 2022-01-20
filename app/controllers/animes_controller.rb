class AnimesController < ApplicationController

  def index
    render json: Anime.all.as_json
  end

  def create
    new_anime = Anime.new(
      "title": params[:title],
      "creator": params[:creator],
      "genre": params[:genre],
      "demographic": params[:demographic],
      "original": params[:original],
      "japanese_title": params[:japanese_title],
      "premiered": params[:premiered]
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

  def update
    anime = Anime.find(params[:id])
    anime.title = params[:title] || anime.title
    anime.creator = params[:creator] || anime.creator
    anime.genre = params[:genre] || anime.genre
    anime.demographic = params[:demographic] || anime.demographic
    anime.original = params[:original] || anime.original
    anime.japanese_title = params[:japanese_title] || anime.japanese_title
    anime.premiered = params[:premiered] || anime.premiered
    anime.save
    if anime.save
      render json: anime.as_json
    else
      render json: {errors: anime.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    anime = Anime.find(params[:id])
    anime.destroy

    render json: {message: "#{anime.title} has been removed from the database....."}
  end

end
