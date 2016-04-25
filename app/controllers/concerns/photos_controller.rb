class PhotosController < ApplicationController
    #Create
    def new
        render "new"
    end    
    
    def create
       @var=Photo.new
       @var.caption=params["caption"]
       @var.photo=params["photo"]
       @var.save
       redirect_to "/photos/#{@var.id}"
    end    
    
    #Read
     def show
        @var=Photo.find(params[:id])
        render "show"
     end
    
    
    #Update
    
    
    #Destroy
    
    
    
    
    
    
end        