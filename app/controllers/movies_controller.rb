class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @watched_movies = Movie.all.where(status: "watched").size
    if params[:movie].present?
      @movie = Movie.find(params[:movie])
      respond_to do |format|
        p @movie
        format.js
      end
    end
  end

  def update
    if params[:status].present?
      @movie = Movie.find(params[:id])
      @movie.update(status: params[:status])
      @watched_movies = Movie.all.where(status: "watched").size
      respond_to do |format|
        format.js
      end
    end
  end
end