class ScenesController < ApplicationController

  def show
    @scene = Scene.find(params[:id].to_i)
  end

  def index
    @scenes = Scene.all
  end

end
