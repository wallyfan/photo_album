class PhotosController < ApplicationController
    before_action :set_photo, :only => [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_url, notice: "新照片上傳成功!"
    else
      render  :action => :new
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to photo_path(@photo), notice: "照片更新成功!"
    else
      render  :action => :edit
    end
  end
  
  def destroy
  @photo.destroy
  redirect_to photos_url, notice: "完成刪除"
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
  end

  def set_photo
  @photo = Photo.find(params[:id])
  end

end
