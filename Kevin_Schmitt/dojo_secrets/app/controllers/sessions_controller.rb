class SessionsController < ApplicationController
  def new

  end

  def create

  end

  def destroy
    session.delete(:user_id) if session[:user_id]
    return redirect_to new_login_path
  end

end
