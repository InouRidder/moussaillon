module Admin
  class ScenesController < BaseController
  layout 'admin'
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]
    def new
      @scene = Scene.new
    end

    def create
     scene = Scene.new(scene_params)
      if scene.save
        redirect_to admin_scene_path(scene)
      else
        render :new
      end
    end

    def index
      @scenes = Scene.all
    end

    def show
      @products = Product.all - @scene.products
      # @scene = Scene.find(params[:id])
    end

    def edit
      # @scene = Scene.find(params[:id])
    end

    def update
      # @scene = Scene.find(params[:id])
      if product_id = params["scene"]["products"]
        product = Product.find(product_id)
        product.scene = @scene
        product.save
      end
      @scene.update(scene_params)
      redirect_to admin_scene_path(@scene)
    end

    def destroy
       # @scene = Scene.find(params[:id])
      @scene.destroy
      redirect_to admin_scenes_path
    end

  private

     def set_product
      @scene = Scene.find(params[:id])
    end

    def scene_params
      params.require(:scene).permit(:title, :description, :banner, :banner_cache)
    end

  end
end


