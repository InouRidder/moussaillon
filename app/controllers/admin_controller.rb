class AdminController < ApplicationController
  layout "simple_layout"

  def admin
    @products = Product.all
    @scenes = Scene.all
  end

end
