class WarehouseController < ApplicationController

  def index

  end

  def history
    @operations = Operation.all
  end

  def remains
    @remains = GoodsWh.all
  end
end
