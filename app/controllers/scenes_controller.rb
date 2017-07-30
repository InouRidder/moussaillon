class ScenesController < ApplicationController

  def index
    @scenes = Scene.all
  end

  def show
  end

end
