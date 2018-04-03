class Song < ApplicationRecord


	def to_param
		song_name
	end 
end
