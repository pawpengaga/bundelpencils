Rails.application.routes.draw do

  devise_for :clients, controllers: {
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }

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
  root "homes#index"
end
