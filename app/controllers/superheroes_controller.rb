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
    @superhero = Superhero.new(super_params)
    if @superhero.valid?
      @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  # def search
  #   render :show
  # end

  private

  def super_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
