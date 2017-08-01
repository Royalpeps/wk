Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reservations, only: [:new, :create, :edit, :update, :show]
  patch '/reservations/:id/confirm', to: 'reservations#confirm', as: 'confirm'
  resources :client_data, only: [:new, :create, :edit, :update]

  namespace :account, as: '' do
    resource :dashboard, only: [:show], as: 'dashboard'
  end

end
