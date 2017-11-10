class SuperheroesController < ApplicationController
  def index
    # byebug
    if params[:superpower]
      @superheroes = Superpower.find_by(:name => params[:superpower]).superheroes
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
    # byebug
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end


  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
