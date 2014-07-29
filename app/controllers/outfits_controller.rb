class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
  end

end
