class UsersController < ApplicationController
    before_action :authenticate_user!


  def index
    @user = User.all    
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password)
  end

end