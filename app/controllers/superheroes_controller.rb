class SuperheroesController < ApplicationController
  before_action :set_superhero, only: [:show]

  def index

    @superheroes = Superhero.all
  end

  def show

  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :superpower_id, :super_name)
  end
end
