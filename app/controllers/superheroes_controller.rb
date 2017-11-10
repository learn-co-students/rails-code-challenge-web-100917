class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end
  def show
    @superhero = Superhero.find_by(id: params[:id])
  end


  def new
    @superhero = Superhero.new
  end

  def create
    @superhero= Superhero.new(superhero_params)
    if @superhero.save
      redirect to superhero_path(@superhero)
    else
      render :new
      end
    end


    private

    def superhero_params
      params.require(:superhero).permit(:name, :super_name, :supehero_id)
  end
end
