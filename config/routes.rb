Rails.application.routes.draw do
  root 'landing#index'
 
  # get '/:song_name' => 'songs#show'
  resources :songs, :path => ''

end
