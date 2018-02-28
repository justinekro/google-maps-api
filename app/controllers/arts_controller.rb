class ArtsController < ApplicationController
  def index
		@arts = Art.all
  end

	def new
		@art = Art.new 
	end

  def create
		@art = Art.new(art_params)
		if @art.save
		redirect_to arts_path
		else
			redirect_to new_art_path
			flash[:alert] = "Please enter all information needed"
		end

	end

	private
 		def art_params
    	params.permit(:latitude, :longitude, :name)
  	end


end
