class LoginController < ApplicationController
  def new

  end

  def create
    user = Agent.find_by_email(user_params[:email])
    if user.present? && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to '/home'
    else
      flash[:error] = ['Invalid Credentials']
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end