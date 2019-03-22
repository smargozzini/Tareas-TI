class MoviesController < ApplicationController
  #before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json

  def index
    @movies = HTTParty.get('https://swapi.co/api/films/?format=json')
  end

  #def index
   # @movies = Movie.new.films
  #end

  # GET /movies/1
  # GET /movies/1.json
  def show
    id = params[:id]
    url = 'https://swapi.co/api/films/' + id + '/?format=json'
    @movie = HTTParty.get(url)
    
  end

  # GET /movies/new

  # GET /movies/1/edit

  # POST /movies
  # POST /movies.json


end
