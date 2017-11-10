class SuperheroesController < ApplicationController
  def index
    if params[:search]
      @superheroes = Superhero.all.find_all{|hero| hero.superpower.name == params[:search]}
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end
