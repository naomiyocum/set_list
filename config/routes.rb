Rails.application.routes.draw do
  get '/songs', to:'songs#index'
  get '/songs/:id', to:'songs#show'

  get '/artists/:artist_id/songs', to: 'artist_songs#index'

  
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'

  post '/artists', to: 'artists#create'
end
