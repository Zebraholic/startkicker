class UserSessionsController < ApplicationController
  def new
      @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(root_url, notice: 'Login Successful')
    else
      flash.now[:alert] = "Login failed"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end


end
