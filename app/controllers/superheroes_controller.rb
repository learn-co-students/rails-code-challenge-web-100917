class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    # @power = Superpower.search(params[:superpower_id])
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      flash[:warning] = "Supername already taken"
      render :new
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end


end
