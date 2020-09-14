Rails.application.routes.draw do

  namespace :api do
    # get "/all_products_path" => "products#all_products_action"
    # get "/camera_path" => "products#camera_action"
    # get "/fan_path" => "products#fan_action"
    # get "/laptop_path" => "products#laptop_action"
    # get "/single_product_path" => "products#single_product_action"
    # get "/single_product_url_path/:id" => "products#single_product_action"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products/" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
