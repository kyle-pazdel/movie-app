class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie = Movie.find_by(id: params["id"])
    render json: movie.as_json
  end

  def create
    movie = Movie.new
    movie.title = params["title"]
    movie.year = params["year"]
    movie.plot = params["plot"]
    movie.director = params["director"]
    movie.english = params["english"]
    movie.save
    if movie.save
      render json: movie.as_json
    else
      render json: movie.errors.full_messages
    end
  end

  def update
    movie = Movie.find_by(id: params["id"])
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.title
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.plot
    movie.english = params["english"] || movie.english
    movie.save
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find_by(id: params["id"])
    movie.delete
  end
end
