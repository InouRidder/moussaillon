module Admin
  class ScenesController < BaseController
  layout 'admin'
  before_action :authenticate_user!
  before_action :set_scene, only: [:show, :edit, :update, :destroy, :add_product]
  before_action :set_product, only: [:add_product]
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
      @product.scene = @scene
      if @product.save
        redirect_to admin_scene_path(@scene)
      else
        @products = Product.all - @scene.products
        render :show
      end
    end

    def remove_product
      product = Product.find(params[:id])
      scene = product.scene
      product.scene_id = nil
      if product.save
        redirect_to admin_scene_path(scene)
        flash[:notice] = product.name + " removed!"
      end
    end

    def destroy
      @scene.destroy
      redirect_to admin_scenes_path
    end

  private

    def set_scene
      @scene = Scene.find(params[:id])
    end

    def set_product
      @product = Product.find(params.require(:scene).fetch(:products))
    end


    def scene_params
      params.require(:scene).permit(:title, :description, :banner)
    end

  end
end


