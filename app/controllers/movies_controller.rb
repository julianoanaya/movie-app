class MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: movies.as_json
    end
    def show
        movie = Movie.find(params["id"])
        render json: movie.as_json
end
