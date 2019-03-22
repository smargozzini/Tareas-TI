require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { characters: @movie.characters, created: @movie.created, director: @movie.director, edited: @movie.edited, episode_id: @movie.episode_id, opening_crwl: @movie.opening_crwl, planets: @movie.planets, producer: @movie.producer, release_date: @movie.release_date, species: @movie.species, starships: @movie.starships, title: @movie.title, url: @movie.url, vehicles: @movie.vehicles } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { characters: @movie.characters, created: @movie.created, director: @movie.director, edited: @movie.edited, episode_id: @movie.episode_id, opening_crwl: @movie.opening_crwl, planets: @movie.planets, producer: @movie.producer, release_date: @movie.release_date, species: @movie.species, starships: @movie.starships, title: @movie.title, url: @movie.url, vehicles: @movie.vehicles } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end
