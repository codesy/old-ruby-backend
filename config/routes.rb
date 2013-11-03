Patronage::Application.routes.draw do
  root to: 'home#index'

  resources :bids

  namespace :admin do
    resources :users
    resources :bids
  end

  devise_for :users,
    :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
