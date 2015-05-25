class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
     def show 
       @profiles = Profiles.find_by_id(params['id'])
    
    render 'show'
  end
  
   def new
    end
  def create
   g = Profiles.new
   g.name = params['name']
   g.caption = params['caption']
   g.url = params['url']
   g.save
    redirect_to "/profiles/#{ g.id }"
  end
end
