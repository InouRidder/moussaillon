class ProductsController < ApplicationController
  layout 'admin_layout', except: [:index, :show]

  def new
    @product = Product.new
  end

  def create
   product = Product.new(product_params)
    if product.save
      redirect_to product_path(product)
    else
      render :new
    end
  end


  def show
    @product = Product.find(params[:id].to_i)
  end

# ADMIN PAGES
  def admin_index
    @products = Product.all
  end

  def admin_show
    @product = Product.find(params[:id].to_i)
  end


# was thinking instead of making a shop / index / result page, just do an index one and set the products based on the params. What do you think?

  def index
    if query = params[:search]
      @products = Product.search_name_and_description(query)
    elsif type = params[:type]
      @products = Product.find_by_type(type)
    else
      @products = Product.all
    end
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

