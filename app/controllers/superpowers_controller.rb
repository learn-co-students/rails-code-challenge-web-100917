class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.find(params[:id])
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.save
    redirect_to superhero_path(@superhero)
  end

  def show
    @superpower = Superpower.find_by(params[:id])
  end

  private
    def superpower_params
      params.require(:superpower).permit(:name, :description)
    end

end
