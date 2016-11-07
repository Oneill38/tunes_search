class SearchController < ApplicationController
	
	def new
		
	end

	def index
		@response = Song.first
		binding.pry
	    respond_to do |format|
			format.js { render json: @response }
	    end

	end

end