class ApplicationController < ActionController::Base
  before_action :current_user
  
  private
  
  def current_user
    @current_user ||= User.find_by(email: session[:email])
  end
end
