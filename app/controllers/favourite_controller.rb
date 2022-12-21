class FavouriteController < ApplicationController
  before_action :authenticate_agent!
  def favourite
    @favourites = Favourite.all
  end

  def create_favourites
    p answer_params_favourite
  end

  private

  def answer_params_favourite
    params.require(:favourite).permit(:nomenclature)
  end

end
