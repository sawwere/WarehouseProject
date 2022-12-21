class AgentController < ApplicationController
  before_action :authenticate_agent!
  def info
    @infos = Agent.all
    @favourites = Favourite.where(agent_id: session[:user_id])
    @user_id = session[:user_id]
    @user = Agent.find(@user_id)
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

  def change_town
    @user_id = session[:user_id]
    @user = Agent.find(@user_id)
    if user_params_town && @user.authenticate(user_params_town[:password])
      @user = Agent.update(session[:user_id], town: user_params_town[:town])
      redirect_to "/show_info"
    else
      flash[:error] = ['Invalid Credentials']
    end
  end

  def change_phone
    @user_id = session[:user_id]
    @user = Agent.find(@user_id)
    if user_params_phone && @user.authenticate(user_params_phone[:password])
      Agent.update(session[:user_id], phone: user_params_phone[:phone])
      redirect_to "/show_info"
    else
      flash[:error] = ['Invalid Credentials']
    end
  end

  private

  def answer_params_agent
    params.require(:answer).permit(:name, :password_digest,:email,:phone,:town)
  end

  def user_params_town
    params.require(:user).permit(:town, :password)
  end

  def user_params_phone
    params.require(:user).permit(:phone, :password)
  end

end
