class SuperheroesController < ApplicationController
  before_action :set_superhero, only: [:show, :edit, :update]
  
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
  
  def edit
  end
  
  def update
    if @superhero.update(superhero_params)
      redirect_to superhero_path(@superhero)
    else
      render :edit
    end
  end
  
  def destroy
  end
  
  def search
    superpower = Superpower.find_by(name: params[:q])
    @superheroes = superpower.superheroes
    @message = "Superheroes with #{params[:q]}:"
    render "index"
  end
  
  private
  
  def set_superhero
    @superhero = Superhero.find(params[:id])
  end
  
  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
