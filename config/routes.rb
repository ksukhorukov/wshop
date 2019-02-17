Rails.application.routes.draw do
	root to: 'pages#index'

	scope :shop, module: :shop do 
		get '/:id_or_slug', to: 'shop#index'
	end

	scope :admin, module: :admin do 
		root to: 'panel#index'
		resources :products
	end

end