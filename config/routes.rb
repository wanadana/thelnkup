  Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :users do
    resources :groups
  end
  resources :groups, only: [:index, :show] do
    resources :memberships, only: [:new, :create, :update, :destroy]
  end
  resource :profile, only: [:show, :edit, :update]
  resource :require_infos, only: [:new, :create]

  root to: 'pages#home'
end
