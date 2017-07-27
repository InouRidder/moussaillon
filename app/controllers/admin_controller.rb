class AdminController < ApplicationController
  layout "admin_layout"

  def index # dashboard!
    @products = Product.all
    @scenes = Scene.all
  end

end
