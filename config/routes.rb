  Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :users do
    resources :groups do
      get 'validate', on: :new
    end
  end

  resources :categories do
    resources :groups, only: [:index, :show], module: :categories
  end

  resources :groups, only: [:index, :show] do
    resources :memberships, only: [:new, :create, :update, :destroy] do
      post :approve, :reject, :join
    end
    resources :comments, only: [:create]
  end

  # resources :categories, only: [:index, :show]
  resource :profile, only: [:show, :edit, :update]
  resource :require_infos, only: [:new, :create]

  root to: 'pages#home'
end
