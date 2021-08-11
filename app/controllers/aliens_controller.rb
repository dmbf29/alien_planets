class AliensController < ApplicationController
  def show
    @alien = Alien.find(params[:id])
  end
end
