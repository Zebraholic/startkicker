class UserSessionsController < ApplicationController
  def new
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(root_url, notice: 'Login Successful')
    else
      flash.now[:alert] = "Login failed"
      render 'new'
    end
  end

  def create
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out!"
  end
end
