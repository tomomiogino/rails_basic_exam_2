Rails.application.routes.draw do
  root to: 'tops#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update] do
    member do
      get :favorites
    end
  end
end
