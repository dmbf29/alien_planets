Rails.application.routes.draw do
  resources :aliens, only: [:show] do
    resources :planets, only: [:new, :create]
  end
  resources :planets, only: [:destroy] do
    resources :planet_biomes, only: [:new, :create]
  end
end

# get '/planets/:id/planet_biomes/new'
# we need to create a planet biome (planet / biome)

# link_to 'destroy planet', planet_path(@planet)
# link_to 'destroy planet', alien_planet_path(@alien, @planet)

#  @planet = Planet.find(params[:id])
