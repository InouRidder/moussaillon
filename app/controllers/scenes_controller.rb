class ScenesController < ApplicationController

  def show
    @scene = Scene.find(params[:id])
    @scene.products
  end

  def index
    @scenes = Scene.all
  end

end
