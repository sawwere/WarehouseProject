class WarehouseController < ApplicationController

  def index

  end


  def create
    Warehouse.create([params[:name], params[:town]])
  end

  def add_wh
    #redirect_to :deadend unless answer_params_wh[:name].present? && answer_params_wh[:town].present?
    p params[:answer]
    if answer_params_wh
      p 66666
      create
      redirect_to "/"
    end
  end

  def answer_params_wh
    params.require(:answer).permit(:name, :town)
  end
end
