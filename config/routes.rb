Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles, except: :index
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
