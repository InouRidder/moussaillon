class PagesController < ApplicationController

  def home
    @latest_products = Product.last(2)
    # @products_banner = @products.banner
  end

  def about
  end

  def contact
  end

end
