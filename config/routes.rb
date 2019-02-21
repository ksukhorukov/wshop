Rails.application.routes.draw do
 	root to: 'pages#index'

 
	get  '/shop/:slug', to: 'shops#show'
	get  '/shops', 			to: 'shops#index'
	
	scope :admin, module: :admin do 
		root to: 'panel#index'
		resources :products
		resource :shop, only: [:index, :edit, :update]
		resources :statistics, only: [:index]
		resources :sales, only: [:index]
	end

	devise_for :admins, controllers: {
           :sessions => "admins/sessions",
           :registrations => "admins/registrations" }

  resource :cart, only: [:show, :update]

end