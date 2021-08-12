class PlanetBiomesController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @planet_biome = PlanetBiome.new
    @biomes = Biome.where.not(id: @planet.biomes).order(name: :asc)
    # @biomes = !@planet.biomes.order(name: :asc)
    raise
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @planet_biome = PlanetBiome.new(planet_biome_params)
    @planet_biome.planet = @planet
    if @planet_biome.save
      redirect_to alien_path(@planet.alien)
    else
      @biomes = Biome.where.not(id: @planet.biomes).order(name: :asc)
      render :new
    end
  end

  private

  def planet_biome_params
    params.require(:planet_biome).permit(:biome_id)
  end
end
