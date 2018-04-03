class SongsController < ApplicationController 



	def show 
		@last_song = Song.find_by(song_name: params[:id])
		@songs = Song.where.not(id: @last_song.id)	
	end


	def create 
		@song = Song.new(song_params)
		@song.song_name.gsub(/[.\/,&()]/, '').gsub(/[\s\-]+/, '-') 
		if @song.save 
			redirect_url root 
		end
	end 

	def new 
		@song = Song.new 
	end 


	def song_params
		params.require(:song).permit(:song_artist, :song_name, :song_link, :song_artwork)
	end 

end 