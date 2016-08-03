class CommitteesController < ApplicationController
  def new
    @user = User.new
  end

  def registered
    if session[:user_id]
      @user = User.find(session[:user_id])
      session[:user_id] = nil
    else
      redirect_to root_path
    end
  end
end
