class GoodController < ApplicationController

  def index

  end


  def create
    Good.create(answer_params_good)
  end

  def create_good
    if answer_params_good
      create
      redirect_to "/"
    end
  end

  private

  def answer_params_good
    params.require(:answer).permit(:nomenclature, :measure)
  end

end
