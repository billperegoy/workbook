class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: username)
    if user && user.authenticate(password)
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out 
  end

  private
  def username
    params[:session][:username].downcase
  end

  def password
    params[:session][:password]
  end
end
