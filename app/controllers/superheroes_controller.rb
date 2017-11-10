class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    if params[:search]
      @superheroes = Superhero.search(params[:search]).order("created_at DESC")
    else
      @superheroes = Superhero.all.order("created_at DESC")
    end
  end


  def show
    @superhero = Superhero.find_by(params[:id])
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
     params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end
