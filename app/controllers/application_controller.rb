class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def change_song
    @last_song = @song
    redirect_url root
  end

  helper_method :change_song
end
