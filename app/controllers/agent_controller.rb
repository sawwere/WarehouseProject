class AgentController < ApplicationController

  def info
    @infos = Agent.all
  end
  def show
    @user = Agent.find(params[:id])
  end
  def new
    @user = Agent.new
  end
  def create
    @user = Agent.create(answer_params_agent)
  end
  def create_agent
    if answer_params_agent
      create
      redirect_to "/agent/#{user.id}"

    end

  end

  private

  def answer_params_agent
    params.require(:answer).permit(:name, :password_digest,:email,:phone,:town)
  end
end
