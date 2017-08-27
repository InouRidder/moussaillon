module Admin
  class ScenesController < BaseController
  layout 'admin'
  before_action :authenticate_user!
  before_action :set_scene, only: [:show, :edit, :update, :destroy, :add_product]

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
    end

    def edit
    end

    def update
      @scene.update(scene_params)
      redirect_to admin_scene_path(@scene)
    end

    def add_product
      product_id = params[:scene].fetch(:products)
      unless product_id == ""
        product = Product.find(product_id)
        product.scene = @scene
        if product.save
          redirect_to admin_scene_path(@scene)
        else
          render :show
        end
      else
        flash[:alert] = "Don't forget to add a product!"
        render :show
      end
    end

    def remove_product
      raise
    end

    def destroy
      @scene.destroy
      redirect_to admin_scenes_path
    end

  private

     def set_scene
      @scene = Scene.find(params[:id])
    end

    def scene_params
      params.require(:scene).permit(:title, :description, :banner, :banner_cache)
    end

  end
end


