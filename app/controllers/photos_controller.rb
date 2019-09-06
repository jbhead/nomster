class PhotosController < ApplicationController
 ## before_action :authenticate_user!

  def create
    @photo.place_id = params[:place_id]
    @place.comments.create(photo_params)
    redirect_to place_path(@place)
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end


