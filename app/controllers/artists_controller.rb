class ArtistsController < ApplicationController
	before_action :set_artist, only: [:show, :edit, :update, :destroy]

	def index
		@artists = Artist.all 
		 respond_to do |format|
			format.html { render :index }
			format.json { render json: @artists }
		end
	end

	def show
		 respond_to do |format|
			format.html { render :show }
			format.json { render json: @artist }
		end
	end

	def new
		@artist = Artist.new
	end
	
	def edit
	end

	def update
		@artist.update(artist_params)
		if @artist.save
			redirect_to artist_path(@artist), message: "Artist updated."
		else
			render :edit, message: "Artist NOT updated, please try again."
		end
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to artist_path(@artist), message: "Artist created."
		else
			render :new, message: "Artist NOT created, please try again."
		end
	end

	def destroy
		@artist.delete
		redirect_to artists_path
	end

	private
		def set_artist
			@artist = Artist.find_by_id(params[:id])
		end

		def artist_params
			params.require(:artist).permit(:name)
		end
end

