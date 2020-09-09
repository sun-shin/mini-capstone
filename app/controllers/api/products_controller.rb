class Api::ProductsController < ApplicationController

  def all_products_action
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def camera_action
    @camera = Product.find_by(id:3)
    render "camera.json.jb"
  end

  def fan_action
    @fan = Product.find_by(id:2)
    render "fan.json.jb"
  end

  def laptop_action
    @laptop = Product.find_by(id:1)
    render "laptop.json.jb"
  end

end
