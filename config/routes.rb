Rails.application.routes.draw do
	root to: 'static_pages#home'
	
	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :cards
  resources :items  do
  	member do
  		patch :update_number_two
  		put :update_number_two
  	end
  end
end
