class PhotosController < ApplicationController
  require 'flickr'
  before_action :set_photo, only: %i[ show edit update destroy ]
  


  # GET /photos/new
  def new
    flickr = Flickr.new
    if params[:user_id].blank?
        @photos = flickr.photos.getRecent
    else
        @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end


  
end