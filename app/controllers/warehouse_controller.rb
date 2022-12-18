class WarehouseController < ApplicationController
  before_action :authenticate_agent!
  def index

  end

  def create
    Warehouse.create(answer_params_wh)
  end

  def add_wh
    if answer_params_wh
      create
      redirect_to "/"
    end
  end

  private

  def answer_params_wh
    params.require(:answer).permit(:name, :town)
  end
end
