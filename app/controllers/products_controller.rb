class ProductsController < ApplicationController

  def product_params
    params.require(:product).permit(:name, :description, :photo, :photo_cache)
  end


  def new
    @product = Product.new
  end

  def create
  end

  def show
  end
end

