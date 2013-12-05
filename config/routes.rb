Patronage::Application.routes.draw do
  root to: 'home#index'

  resources :bids

  namespace :admin do
    resources :users
    resources :bids
  end

  namespace :api do
    namespace :v1 do
      resources :bids
      resource :csrf_token
    end
  end

  devise_for :users,
    :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
