Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :tasks
  resources :sessions, only: [:create]
  resources :users do
    get :sign_in, on: :collection
  end
  root to: 'tasks#index'
end
