class SongsController < ApplicationController
	before_action :set_song, only: [:show, :edit, :update, :destroy]

	def index
		if params[:artist_id]
			@songs = Artist.find(params[:artist_id]).songs
		else
			@songs = Song.all 
		 respond_to do |format|
			format.html { render :index }
			format.json { render json: @songs }
			end
		end
	end

	def show
		 respond_to do |format|
			format.html { render :show }
			format.json { render json: @song }
		end
	end

	def new
		@song = Song.new
	end
	
	def edit
	end

	def update
		@song.update(song_params)
		if @song.save
			redirect_to song_path(@song), message: "Song updated."
		else
			render :edit, message: "Song NOT updated, please try again."
		end
	end

	def create
		@song = Song.new(song_params)
		if @song.save
			redirect_to song_path(@song), message: "Song created."
		else
			render :new, message: "Song NOT created, please try again."
		end
	end

	def destroy
		@song.delete
		redirect_to songs_path
	end

	private
		def set_song
			@song = Song.find_by_id(params[:id])
		end

		def song_params
			params.require(:song).permit(:name, :artist_id)
		end
end

