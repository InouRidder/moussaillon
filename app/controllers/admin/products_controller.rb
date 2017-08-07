module Admin
  class ProductsController < BaseController

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


    def index
      @products = Product.all
    end

    def show
      @product = Product.find(params[:id].to_i)
    end


  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :photo, :photo_cache)
    end

  end
end
