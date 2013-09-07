class PlacesController < ApplicationController

  def index
    respond_with Place.all
  end

end