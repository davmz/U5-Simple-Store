Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'

  ## COLLECTION, load and display all companies
  get "/products", to: "products#index", as: "products"

  ## MEMBER, load and display a single company
  # no string constraint on the ROUTES PATH
  get "/products/:id", to: "products#show", as: "product", constraints: { id: /\d+/ }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
