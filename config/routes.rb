Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard"
    # Defines the root path route ("/")
    # root "articles#index"
    resources :books do
      resources :drops, only: [:new, :create]
      member do
        patch :have_read
      end
      member do
        patch :unread
      end
      member do
        get :currently_reading
      end
      member do
        patch :not_reading
      end
    end

    resources :drops, only: [:index, :update, ]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end

  resources :book_temps, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:create, :new]
  end
end
