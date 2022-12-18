class GoodsWhController < ApplicationController

  def remains
    @goods_whs = GoodsWh.all
  end

end
