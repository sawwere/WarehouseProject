class WarehouseController < ApplicationController
  before_action :authenticate_agent!
  def index

  end

  def create
    wh = Warehouse.new(params_wh)
    if wh.save

    else
      flash[:error] = wh.errors.full_messages
    end
    redirect_to manage_warehouse_url
  end

  private

  def params_wh
    params.require(:warehouse).permit(:name, :town)
  end
end
