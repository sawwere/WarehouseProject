class FavouriteController < ApplicationController
  before_action :authenticate_agent!
  def favourite
    @favourites = Favourite.all
  end

end
