class SuperpowersController < ApplicationController
  before_action :set_superpower, only: [:show, :edit, :update]
  
  def index
    @superpowers = Superpower.all
  end
  
  def show
  end
  
  def new
    @superpower = Superpower.new
  end
  
  def create
    @superpower = Superpower.new(superpower_params)
    if @superpower.save
      redirect_to superpower_path(@superpower)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @superpower.update(superpower_params)
      redirect_to superpower_path(@superpower)
    else
      render :edit
    end
  end
  
  def destroy
  end
  
  private
  
  def set_superpower
    @superpower = Superpower.find(params[:id])
  end
  
  def superpower_params
    params.require(:superpower).permit(:name, :description)
  end
end
