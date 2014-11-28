Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  # root 'welcome#index'
  root 'house_listing#index'
  get '/code' => 'welcome#code'

  resources :house_listings
end
