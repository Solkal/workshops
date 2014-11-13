class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:tag]
      @images = Image.tagged_with(params[:tag])
    else
      @images = current_user.images.all
      @users = User.all
    end
  end
end
