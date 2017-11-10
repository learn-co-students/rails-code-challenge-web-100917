class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(params[:superhero])
        if @superhero.save
            redirect_to superhero_path(@superhero)
        else
            render 'new'
        end
    end

end
