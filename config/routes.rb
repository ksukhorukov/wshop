Rails.application.routes.draw do
 	root to: 'pages#index'

	scope :shop, module: :shop do 
		get '/:id_or_slug', to: 'shop#index'
	end

	scope :admin, module: :admin do 
		root to: 'panel#index'
		resource :shop, only: [:index, :edit, :update]
		resources :products
		resources :statistics, only: [:index]
		resources :sales, only: [:index]
	end

	devise_for :admins, controllers: {
           :sessions => "admins/sessions",
           :registrations => "admins/registrations" }

end