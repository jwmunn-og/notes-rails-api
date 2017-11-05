Rails.application.routes.draw do
  root "notes#index"
  resources :notes do
    resources :tags, only: [:create]
  end
  resources :tags, only: [:destroy]
end
