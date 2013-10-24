Patronage::Application.routes.draw do
  root to: 'bids#index'

  resources :bids

  devise_for :users,
    :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
