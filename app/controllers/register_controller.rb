class RegisterController < ApplicationController
  def new

  end

  def create
    user = Agent.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to "/agent/#{user.id}"
    else
      flash[:error] = user.errors.full_messages
      redirect_to '/register'
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:name,:email,
                  :password,
                  :password_confirmation)
  end
end