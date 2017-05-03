class PhotosController < ApplicationController

def index
@list_of_all_photos = Photo.all
  render("photos/index.html.erb")
end

def new_form

  render("photos/new_form.html.erb")
end

def create_row

  #id = params[:id]
  #@id = id
  #@my_photo = Photo.find(id)
url = params[:the_source]
cap = params[:the_caption]
new_photo = Photo.new
new_photo.source = url
new_photo.caption = cap
new_photo.save
  #render("photos/create_row.html.erb")
  redirect_to("/photos")
end

def show
id = params[:id]
@id = id
@my_photo = Photo.find(id)

  render("photos/show.html.erb")
end

def edit_form
  id = params[:id]
  @id = id
  @my_photo = Photo.find(id)
  @capto = @my_photo.caption
  @urlo = @my_photo.source
url = params[:the_source]
cap = params[:the_caption]
new_photo = Photo.new
new_photo.source = url
new_photo.caption = cap
new_photo.save
  render("photos/edit_form.html.erb")
end

def update_row

  render("photos/update_row.html.erb")
end

def destroy_row
  id = params[:id]
  @id = id
  @my_photo = Photo.find(id)
  @delete = @my_photo.destroy

  redirect_to("/photos")
end

end
