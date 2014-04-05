class SearchController < ApplicationController

  def index
    @movies = Tmdb::Movie.find(params[:query])
  end

end
