class AdminProductsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
   @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product)
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show
    # @product = Product.find(params[:id])
  end

  def edit
    # @product = Product.find(params[:id])
  end

  def update
    # @product = product.find(params[:id])
    @product.update(product_params)
    redirect_to admin_product_path(@product)
  end

  def destroy
    # @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo, :photo_cache)
  end

end
