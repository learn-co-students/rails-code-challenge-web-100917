class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
    if params[:search]
      @superheroes = Superhero.search(params[:superhero][:search])
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
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end



  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id, :search)
  end
end
