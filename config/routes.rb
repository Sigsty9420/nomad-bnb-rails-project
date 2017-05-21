Rails.application.routes.draw do
  devise_for :users,
             :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" },
             :path => '',
             :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}

  root "static#home"

  get '/auth/facebook/callback' => 'sessions#create'

end
