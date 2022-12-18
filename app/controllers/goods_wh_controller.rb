class GoodsWhController < ApplicationController
  before_action :authenticate_agent!
  def remains
    @goods_whs = GoodsWh.all
  end

end
