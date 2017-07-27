class ScenesController < ApplicationController
  layout 'admin_layout', only: [:admin_index]

  def index
    @scenes = Scene.all
  end

  def new
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
