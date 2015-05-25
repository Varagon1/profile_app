class ProfilesController < ApplicationController
  def show 
       @profiles = Profiles.find_by(id: params['id'])
    render 'show'
  end
  
   def new
    end
  def create
    @profiles = Profiles.new
    @profiles.name = params['name']
    @profiles.caption = params['caption']
    @profiles.url = params['url']
    if @profiles.save
    redirect_to "/profiles/#{ g.id }"
      else render 'new'
    end
  end
  def edit
    @profiles = Profiles.find_by(id: params['id'])
  end
 # Works up to this point
  def update
    @profiles = Profiles.find_by(id: params['id'])
    @profiles.name = params ['name']
    @profiles.caption = params['caption']
    @profiles.url = params['url']
   if @profiles.save
    redirect_to "/profiles/#{ g.id }"
     else
      render 'edit'
    end
  end
  def destroy
    @profiles = Profiles.find_by(id: params['id'])
    @profiles.destroy
    redirect_to "/profiles"
end
  def index
    @profiles = Profiles.all
end
end