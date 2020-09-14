class Api::ProductsController < ApplicationController

  # def all_products_action
  #   @all_products = Product.all
  #   render "all_products.json.jb"
  # end

  # def camera_action
  #   @camera = Product.find_by(id:3)
  #   render "camera.json.jb"
  # end

  # def fan_action
  #   @fan = Product.find_by(id:2)
  #   render "fan.json.jb"
  # end

  # def laptop_action
  #   @laptop = Product.find_by(id:1)
  #   render "laptop.json.jb"
  # end

  # def single_product_action
  #   product_id = params[:id]
  #   @message = Product.find_by(id: product_id)
  #   render "single_product.json.jb"
  # end

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_path: params[:image_path],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_path = params[:image_path] || @product.image_path
    @product.description = params[:description] ||@product.description

    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message:"Product was destroyed"} 
  end

end
