Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root "static#home"

  get '/auth/facebook/callback' => 'sessions#create'

end
