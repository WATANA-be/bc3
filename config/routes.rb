Rails.application.routes.draw do
  get 'bookmarks/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'bookmarks#index'
  
  get 'bookmarks/new', to: 'bookmarks#new'
  
  post 'bookmarks', to: 'bookmarks#create'
end
