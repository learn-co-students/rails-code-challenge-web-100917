class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def query
    @superheroes = Superhero.find_by(name:params[:query])
  end
  
end
