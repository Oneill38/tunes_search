class SearchController < ApplicationController
	
	def new
		@search = Search.new
	end

	def index
		params[:search][:song_title].presence ?	song_title = params[:search][:song_title] : song_title = '%%'
		params[:search][:album_title].presence ? album_title = params[:search][:album_title] : album_title = '%%'
		params[:search][:artist_name].presence ? artist_name = params[:search][:artist_name] : artist_name = '%%'
	    @response = Search.where("song_title like ? and album_title like ? and artist_name like ?", song_title, album_title, artist_name)

	    respond_to do |format|
			format.js { render json: @response }
	    end

	end

end