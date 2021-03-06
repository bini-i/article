Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/sign_up', to: 'users#new'
  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  delete '/sign_in', to: 'sessions#destroy'
  
  resources :users, only: %i[create]
  resources :categories
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  root "categories#index"
end
