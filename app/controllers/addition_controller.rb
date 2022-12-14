class AdditionController < ApplicationController

  def add_warehouse
    #redirect_to :deadend unless answer_params_wh[:name].present? && answer_params_wh[:town].present?
    #p params[:action]
  end

  #def deadend; end

  private

  def answer_params_wh
    params.require(:answer).permit(:name, :town)
  end
end
