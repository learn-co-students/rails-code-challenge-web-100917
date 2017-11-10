class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def search
    superpower = Superpower.find_by(name: params[:superpower])
    @superheroes = Superhero.where(superpower: superpower)
    render :index
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  def new
    @superhero = Superhero.new
  end

  private
  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
