class ImagesController < ApplicationController


  def new
    @image = current_user.images.build
  end

  def create
    @image = current_user.images.new(image_tag_params)
    if @image.save
      flash[:notice] = "Good work!"
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    @image = current_user.images.find(params[:id])
    @image.photo = nil
    @image.save
    redirect_to users_path
  end

  def trash
    @image = Image.find(params[:id])
    @image.update(trash: true)
    redirect_to users_path
  end

  def main_page
    @image = Image.find(params[:id])
    @image.update(main_page: true)
    redirect_to users_path
  end

  def like
    @image = Image.find(params[:id])
    @image.like += 1
    @image.save
    redirect_to root_path
  end

  def dislike
    @image = Image.find(params[:id])
    @image.dislike += 1
    @image.save
    redirect_to root_path
  end

  private

  def image_params
    params.require(:image).permit(:photo)
  end

  def image_tag_params
    params.require(:image).permit(:photo, :tag_list)
  end

end
