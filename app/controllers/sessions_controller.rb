class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    debugger
    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      session[:email] = @user.email
      redirect_to new_text_templat_path
    else
      @user = User.new
      flash[:error] = "Incorrect email or password"
      render :new and return
    end
  end

  def destroy
    current_user.currently_logged_in = false
    current_user.save
    session[:email] = nil
    redirect_to :new and return
  end

end
