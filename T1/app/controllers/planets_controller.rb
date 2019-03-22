class PlanetsController < ApplicationController
  def show
    pag = 'https://swapi.co/api/planets/' + params[:id] + '/?format=json'
    @planet = HTTParty.get(pag)
  end
end
