class FavouriteController < ApplicationController
  before_action :authenticate_agent!
  def favourite
    @favourites = Favourite.all
  end

  def create
    good = Good.find_by_nomenclature(params[:nomenclature])
    user_id = session[:user_id]
    Favourite.create({good_id:good.id, agent_id: user_id});
  end

  def create_favourites
    p params
    # p params[:nomenclature r]
    if params[:nomenclature]
      create
      redirect_to '/add_good'
    end
  end

end
