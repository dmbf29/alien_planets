class PlanetsController < ApplicationController
  before_action :set_alien, only: [:new, :create]

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.alien = @alien
    if @planet.save
      redirect_to alien_path(@alien)
    else
      render :new
    end
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to alien_path(@planet.alien)
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url, :category)
  end

  def set_alien
    @alien = Alien.find(params[:alien_id])
  end
end
