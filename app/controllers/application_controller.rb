class ApplicationController < ActionController::Base
  def current_user
    return unless session[:user_id]
    @current_user ||= Agent.find(session[:user_id])
  end

  protected
  def authenticate_agent!
    @current_user = Agent.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end
end
