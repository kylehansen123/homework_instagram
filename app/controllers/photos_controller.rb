class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    @a = Photo.find_by({ :id => @id })
    @result = @a.source
    @name = @a.caption
  end

  def new_form
  end

  def create_row
    @n = Photo.new
    @n.source = params[:the_source]
    @n.caption = params[:the_caption]
    @n.save
  end

  def destroy
    @id = params[:id]
    @a = Photo.find_by({ :id => @id })
    @a.destroy
  end

  def edit_form
    @id = params[:id]
    @a = Photo.find_by({ :id => @id })
    @source = @a.source
    @caption = @a.caption

  end

  def update_row
    @id = params[:id]
    @updated = Photo.find_by({ :id => @id })
    @updated.source = params[:the_source]
    @updated.caption = params[:the_caption]
    @updated.save

  end

end
