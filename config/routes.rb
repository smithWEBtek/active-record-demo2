Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		
  # resources :genres


	# get '/artists/:id', to: 'artists#show'
	# get '/artists', to: 'artists#index'


	resources :genres

	root to: 'artists#index'

	resources :artists do
		resources :songs, only: [:index, :new, :create, :show]
	end
	resources :songs, only: [:index, :edit, :update, :destroy]
end
