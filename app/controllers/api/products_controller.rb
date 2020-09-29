class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]


  def index
    @products = Product.all
      # .title_search(params[:search])
      # .discounted(params[:discount])
      # .sorted(params[:sort], params[:sort_order])
      if params[:category]
        category = Category.find_by(name: params[:category])
        @products = category.products
      end
  
    render "index.json.jb"
  end

  def show
    # @product = Product.find(params[:id])
    # if current_user
      @product = Product.find(params[:id])
      render "show.json.jb"
    # else 
    #   render json: {}, status: :unauthorized
    # end
    
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory], 
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end

  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] ||@product.description
    @product.inventory = params[:inventory] || @product.inventory

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status:422
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message:"Product was destroyed"} 
  end

end
