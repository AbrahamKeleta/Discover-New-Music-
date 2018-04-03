class LandingController < ApplicationController 

	def index
		
		@last_song = Song.last
		@songs = Song.where.not(id: @last_song.id)
	end 
end 