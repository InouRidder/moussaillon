class AdminScenesController < ApplicationController
  layout 'admin_layout'
  before_action :authenticate_user!


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
    @scene = Scene.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def scene_params
    params.require(:scene).permit(:title, :description, :banner, :banner_cache)
  end

end
