Rails.application.routes.draw do
  get 'availabilities/edit'
  get 'availabilities/update'
  root to: 'pages#home'

  devise_for :users

  resource :profile,        only: [:edit, :update]
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
end
