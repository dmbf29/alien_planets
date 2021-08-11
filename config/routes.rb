Rails.application.routes.draw do
  resources :aliens, only: [:show] do
    resources :planets, only: [:new, :create]
  end
  resources :planets, only: [:destroy]
end


# link_to 'destroy planet', planet_path(@planet)
# link_to 'destroy planet', alien_planet_path(@alien, @planet)

#  @planet = Planet.find(params[:id])
