class CharacterController < ApplicationController

  def show
    pag = 'https://swapi.co/api/people/' + params[:url] + '/?format=json'
    @character = HTTParty.get(pag)
  end

end
