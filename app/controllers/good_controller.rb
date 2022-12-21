class GoodController < ApplicationController
  before_action :authenticate_agent!
  def index

  end


  def add_good
    @goods = Good.all
  end

  def create
    Good.create(answer_params_good)
  end

  def create_good
    if answer_params_good
      create
      redirect_to "/add_good"
    end
  end

  private

  def answer_params_good
    params.require(:answer).permit(:nomenclature, :measure)
  end

end
