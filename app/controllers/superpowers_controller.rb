class SuperpowersController < ApplicationController
  before_action :set_superpower, only:[:show]
  def index
    @superpowers = Superpower.all
  end

  def show

  end
  def set_superpower
    @superpower = Superpower.find(params[:id])
  end
end
