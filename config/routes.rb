Rails.application.routes.draw do
  resources :tasks
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'tasks#index'
end
