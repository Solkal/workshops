class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
      @images = current_user.images.all
      @users = User.all
    end
end
