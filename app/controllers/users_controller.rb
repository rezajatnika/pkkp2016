class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    puts @user.errors.full_messages
    # if verify_recaptcha(model: @user) && @user.save
    if @user.save
      session[:user_id] = @user.id
      redirect_to registered_path
    else
      render 'committees/new'
    end
  end

  def index
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :nim, :email, :phone, :birth, :major_id, :address
    )
  end
end
