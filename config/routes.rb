Rails.application.routes.draw do
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/create'
  get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
