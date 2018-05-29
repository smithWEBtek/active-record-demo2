class GenresController < ApplicationController
	before_action :set_genre, only: [:show, :edit, :update, :destroy]

	def index
		@genres = Genre.all 
		 respond_to do |format|
			format.html { render :index }
			format.json { render json: @genres }
		end
	end

	def show
		 respond_to do |format|
			format.html { render :show }
			format.json { render json: @genre }
		end
	end

	def new
		@genre = Genre.new
	end
	
	def edit
	end

	def update
		@genre.update(genre_params)
		if @genre.save
			redirect_to genre_path(@genre), message: "Genre updated."
		else
			render :edit, message: "Genre NOT updated, please try again."
		end
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			redirect_to genre_path(@genre), message: "Genre created."
		else
			render :new, message: "Genre NOT created, please try again."
		end
	end

	def destroy
		@genre.delete
		redirect_to genres_path
	end

	private
		def set_genre
			@genre = Genre.find_by_id(params[:id])
		end

		def genre_params
			params.require(:genre).permit(:name)
		end
end

