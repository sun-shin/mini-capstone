Rails.application.routes.draw do

  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/camera_path" => "products#camera_action"
    get "/fan_path" => "products#fan_action"
    get "/laptop_path" => "products#laptop_action"
  end
end
