Rails.application.routes.draw do
  devise_for :viewers
  resources :viewers
  resources :movies
  resources :critics
  get "movies", to: "movies#index"
  get "/reviews/new", to: "reviews#new"
  get "/reviews/index", to: "reviews#index"
  root to: "viewers#index"
  get "/viewers/promote", to: "viewers#promote"
  post "/reviews/new", to: "reviews#create"
  get "critics", to: "critics#index"
  patch '/reviews/new' => 'reviews#new', as: 'new'
  patch '/reviews/delete' => 'reviews#delete', as: 'delete'
  patch 'compute_avg_rating', to: 'movies#compute_avg_rating', as: 'compute_avg_rating'
  patch 'subscribe', to: "movies#subscribe", as: "subscribe"
  patch 'unsubscribe', to: "movies#unsubscribe", as: "unsubscribe"
  patch 'csubscribe', to: "critics#subscribe", as: "csubscribe"
  patch 'cunsubscribe', to: "critics#unsubscribe", as: "cunsubscribe"
  patch 'becomecritic', to: "viewers#show", as: "becomecritic"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
