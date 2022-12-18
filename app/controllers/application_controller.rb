class ApplicationController < ActionController::Base
  protected
  def authenticate_agent!
    p session[:user_id]
    if session[:user_id]!=nil
      #super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
