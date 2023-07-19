Rails.application.routes.draw do
  get '/requerimientos', to: "pages#index"
  get '/mailing', to: "pages#about"
  get '/sorry', to: "pages#sorry"

  devise_for :clients, controllers: {
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }

  namespace :admin do
    get 'clients/new', to: 'clients#new', as: :new_client
    post 'clients', to: 'clients#create', as: :clients
  end

  resources :postulations

  resources :articles do
    resources :postulations
  end

  resources :clients do
    resources :postulations
    resources :articles
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
end
