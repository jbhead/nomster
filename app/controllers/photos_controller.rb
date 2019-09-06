class PhotosController < ApplicationController
 ## before_action :authenticate_user!

  def create
    @photo = Photo.new(photo_params)
    @photo.place_id = params[:place_id]
    @photo.save!
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :image)
  end


