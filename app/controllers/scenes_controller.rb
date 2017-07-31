class ScenesController < ApplicationController

  def show
  end

  def index
    @scenes = Scene.all
  end

end
