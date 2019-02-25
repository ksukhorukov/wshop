# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#index'

  get  '/shop/:slug', to: 'shops#show'
  get  '/shops',	to: 'shops#index'
  get  '/order/:uuid', to: 'order#show'

  scope :admin, module: :admin do
    root to: 'panel#index'
    resources :products
    resource :shop, only: %i[index edit update]
    resources :statistics, only: [:index]
  end

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  resources :carts
  resources :purchases

  get '/purchases/new/:cart_id', to: 'purchases#new'
end
