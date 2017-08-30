class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id].to_i)
  end

  def index
    if query = params[:search]
      @products = Product.search_name_and_description(query)
      @info_title = "Results for #{query}"
    elsif type = params[:type]
      @products = Product.find_by_category(type)
      @products.count > 1
      type = type.pluralize
      @info_title = type
    else
      @products = Product.all
      @info_title = nil
    end
  end

end

