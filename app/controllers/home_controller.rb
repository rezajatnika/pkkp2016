class HomeController < ApplicationController
  def index
    @user = User.new
  end

  def result
    if session[:user_id]
      @user = User.find(session[:user_id])
      session[:user_id] = nil
    else
      redirect_to root_path
    end
  end
end
