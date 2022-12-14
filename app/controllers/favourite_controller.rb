class FavouriteController < ApplicationController

  def favourite
    @favourites = Favourite.all
  end

end
