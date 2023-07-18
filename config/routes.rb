Rails.application.routes.draw do
  resources :postulations

  resources :articles do
    resources :postulations
  end
  devise_for :clients

  devise_for :users, controllers: {
    sessions: 'clients/sessions'
    registrations: 'clients/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "homes#index"
end
