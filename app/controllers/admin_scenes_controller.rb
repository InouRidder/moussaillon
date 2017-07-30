class AdminScenesController < ApplicationController
  layout 'admin_layout'

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

end
