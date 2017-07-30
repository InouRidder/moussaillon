class AdminProductsController < ApplicationController
  layout 'admin_layout'

  def new
    @product = Product.new
  end

  def create
   product = Product.new(product_params)
    if product.save
      redirect_to admin_product_path(product)
    else
      render :new
    end
  end


# ADMIN PAGES
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id].to_i)
  end

  # We need to decide how we are going to filter on type of product.
  # Are we adding a type model, as a product has many types? or will it have one type
  # do we want it in a seperate model?
  # lets find out whats best for processing speed <-

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo, :photo_cache)
  end

  # def set_product
  #   @product = Product.find(params[:product_id].to_i)
  # end

end
