class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
     params[:user][:email],
     params[:user][:password]
    )
    if user.nil?
      flash.now[:errors] = ["invalid credentials"]
      render :new
    else
      login_user!(user)
      redirect_to user_url(user.id)
    end
  end

  def destroy
    logout_user
  end

end
