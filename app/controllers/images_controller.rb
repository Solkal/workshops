class ImagesController < ApplicationController

  def new
    @image = current_user.images.build
  end

  def create
  @image = current_user.images.new(image_params)
    if @image.save
      flash[:notice] = "Good work!"
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:photo)
  end

end
