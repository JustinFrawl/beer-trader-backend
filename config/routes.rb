Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :trades, only: [:index, :show, :create]
      resources :beers, only: [:index, :show, :create]
      resources :messages, only: [:index, :show, :create]
      post '/login', to: 'sessions#create'
      get '/current_user', to: 'sessions#show'
    end
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
