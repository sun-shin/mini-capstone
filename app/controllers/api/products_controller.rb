class Api::ProductsController < ApplicationController
  def all_products_action
    @all_products = Product.all
    render "all_products.json.jb"
  end
end
