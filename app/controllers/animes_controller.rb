class AnimesController < ApplicationController

  def index
    anime = Anime.all
    render json: anime.as_json
  end
end
