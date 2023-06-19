Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show] do
    resources :chatrooms, only: [:create]
  end

  get "dashboard", to: "pages#dashboard"
  resources :books do
    resources :drops, only: [:new, :create]
    member do
      patch :have_read
    end
    member do
      patch :unread
    end
    member do
      patch :currently_reading
    end
    member do
      patch :not_reading
    end
  end

  resources :drops, only: [:index, :update, ]

  resources :book_temps, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:create, :new]
  end

  resources :chatrooms, only: [:index, :show, :create] do
    resources :messages, only: :create
  end
  patch "drops/:id/accept", to: "drops#accept_drop", as: :accept_drop
  patch "drops/:id/decline", to: "drops#decline_drop", as: :decline_drop
  patch "drops/:id/delete", to: "drops#delete_drop", as: :delete_drop
end
