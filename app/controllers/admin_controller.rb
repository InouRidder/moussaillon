class AdminController < ApplicationController
  layout "admin_layout"
  before_action :authenticate_user!

  def index # dashboard!
    @products = Product.all
    @scenes = Scene.all
  end

end
