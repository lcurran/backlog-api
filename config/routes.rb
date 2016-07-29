Rails.application.routes.draw do
  resources :libraries, except: [:new, :edit]
  get '/search' => 'catalogs#search'
  post '/addgame' => 'catalogs#addgame'
  resources :games, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
