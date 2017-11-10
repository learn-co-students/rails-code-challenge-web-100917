class SuperheroesController < ApplicationController
  def search
    @superheroes = Superhero.all.where(superpower: (Superpower.find_by(name: params[:search])))
    render :index
  end

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
    @superhero = Superhero.new(hero_params)
    # byebug
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

private

def hero_params
  params.require(:superhero).permit(:name, :super_name, :superpower_id)
end
end
