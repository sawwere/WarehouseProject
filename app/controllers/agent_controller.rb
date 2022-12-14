class AgentController < ApplicationController

  def info
    @infos = Agent.all
  end
  def create
    @user = Agent.create(answer_params_agent)
  end
  def create_agent
    if answer_params_agent
      create
      redirect_to "/"
    end
  end

  private

  def answer_params_agent
    params.require(:answer).permit(:name, :password,:email,:phone,:town)
  end
end
