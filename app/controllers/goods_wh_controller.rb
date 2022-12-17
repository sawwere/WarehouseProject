class GoodsWhController < ApplicationController

  def remains
    @remains = GoodsWh.all
  end

end
