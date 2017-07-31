class ScenesController < ApplicationController

  def index
    @scenes = Scene.all
  end

  def show
  end


# TODO : MOVE BELOW CODE TO ADMINSCENES CONTROLLER
  def create
   scene = Scene.new(scene_params)
    if scene.save
      redirect_to admin_scene_path(scene)
    else
      render :new
    end
  end


private

  def scene_params
    params.require(:scene).permit(:title, :description, :banner, :banner_cache)
  end

end
