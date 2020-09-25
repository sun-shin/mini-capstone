Rails.application.routes.draw do

  namespace :api do
    
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products/" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    
    post "/users/" => "users#create"
    post "/sessions/" => "sessions#create"

    post "/orders/" => "orders#create"

    post "/carted_products/" => "carted_products#create"
    get "/carted_products/" => "carted_products#index"
  end
end
