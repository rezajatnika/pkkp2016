class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    puts @user.errors.full_messages
    if @user.save
      session[:user_id] = @user.id
      redirect_to result_path
    else
      render 'home/index'
    end
  end

  def index
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :nim, :email, :phone, :birth, :major_id)
  end
end
