class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id].to_i)
  end

# was thinking instead of making a shop / index / result page, just do an index one and set the products based on the params. What do you think?

  def index
    if query = params[:search]
      @products = Product.search_name_and_description(query)
    elsif type = params[:type]
      @products = Product.find_by_category(type)
    else
      @products = Product.all
    end
  end

end

