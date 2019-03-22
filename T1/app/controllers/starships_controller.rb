class StarshipsController < ApplicationController
  def show
    pag = 'https://swapi.co/api/starships/' + params[:id] + '/?format=json'
    @starship = HTTParty.get(pag)
  end
end
