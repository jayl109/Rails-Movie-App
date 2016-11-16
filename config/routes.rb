Rails.application.routes.draw do
  get "/movies", to: "movies#index"
  patch "/delete", to: "reviews#delete", as: 'delete'
  #post "reviews/new", to: "reviews#"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
