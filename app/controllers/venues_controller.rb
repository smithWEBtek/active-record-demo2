class VenuesController < ApplicationController
		before_action :set_venue, only: [:show, :edit, :update, :destroy]
	
		def index
			@venues = Venue.all 
			 respond_to do |format|
				format.html { render :index }
				format.json { render json: @venues }
			end
		end
	
		def show
			 respond_to do |format|
				format.html { render :show }
				format.json { render json: @venue }
			end
		end
	
		def new
			@venue = Venue.new
		end
		
		def edit
		end
	
		def update
			@venue.update(venue_params)
			if @venue.save
				redirect_to venue_path(@venue), message: "Venue updated."
			else
				render :edit, message: "Venue NOT updated, please try again."
			end
		end
	
		def create
			@venue = Venue.new(venue_params)
			if @venue.save
				redirect_to venue_path(@venue), message: "Venue created."
			else
				render :new, message: "Venue NOT created, please try again."
			end
		end
	
		def destroy
			@venue.delete
			redirect_to venues_path
		end
	
		private
			def set_venue
				@venue = Venue.find_by_id(params[:id])
			end
	
			def venue_params
				params.require(:venue).permit(:name, :url, :city, :state)
			end
	end
	
