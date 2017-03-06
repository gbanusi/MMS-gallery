class GalleryController < ApplicationController
	before_action :authenticate_admin!, only: [:new, :create]

	layout 'gallery'

	def index
		@pictures = Picture.order('created_at DESC').all
	end

	def new
		
	end


	def create
		@picture = Picture.new(picture_params)


		if @picture.save
			flash[:notice] = 'Slika je dodana.'
			redirect_to gallery_path
		else
			flash[:notice] = 'Dodavanje nije uspjelo.'
			render 'new'
		end	

	end

    def destroy
	    picture.find(params[:picture_id]).destroy
	    flash[:notice] = "Slika je izbrisana."
	    redirect_to gallery_path
	  end

    def picture_params
    	params.require(:picture).permit(:name, :pic) 
    end




end
