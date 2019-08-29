Rails.application.routes.draw do
  get 'users/show'
  get 'users/localisation'
  patch 'users/localisation_update'
  get 'availabilities/edit'
  get 'availabilities/update'
  root to: 'pages#home'

  devise_for :users, controllers: { registrations: "registrations" }
  resource :profile, only: [:edit, :update] do
    collection do
      resource :favorite_sports, only: [:edit, :update], controller: 'profile/favorite_sports'
    end
  end

  resource :availabilities, only: [:edit, :update]
  resource :sports,         only: [:edit, :update]

  resource :dashboard, only: [:show]

  resources :events, only: [:index] do
    collection do
      get :matching # /events/matching
    end

    resources :user_events, only: [:create]
  end

  resources :user_events, only: [:destroy]
  resources :events, only: [:create, :destroy]
end
