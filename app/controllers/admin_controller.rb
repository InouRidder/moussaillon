class AdminController < ApplicationController
  layout "simple_layout"

  def index # dashboard!
    @products = Product.all
    @scenes = Scene.all
  end

end
