Rails.application.routes.draw do
  root "books#index" 

  match 'about', to: 'main#about', via: :get

  resources :books do
    member do
      get :delete
    end
  end
  resources :categories do
    member do
      get :delete
    end
  end

  # get 'main/index'
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'
  # get 'books/delete'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
