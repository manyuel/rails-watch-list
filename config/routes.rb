Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'
  get 'lists/:id', to: 'lists#show', as: :list
  get 'bookmarks/:id/edit', to: 'bookmarks#edit', as: :edit_bookmark
  patch 'bookmarks/:id', to: 'bookmarks#update'
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
