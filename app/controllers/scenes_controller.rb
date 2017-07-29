class ScenesController < ApplicationController
  layout 'admin_layout', except: [:index]

  def index
    @scenes = Scene.all
  end

  def new
    @scene = Scene.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def admin_index
    @scenes = Scene.all
  end

end
