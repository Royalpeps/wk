Rails.application.routes.draw do
  get 'weekly_schedules/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reservations, only: [:new, :update, :show]

  namespace :account, as: '' do
    resource :dashboard, only: [:show], as: 'dashboard'
  end
end
