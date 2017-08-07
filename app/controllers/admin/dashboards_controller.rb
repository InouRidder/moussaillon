module Admin
  class DashboardsController < BaseController

    def show # dashboard!
      @products = Product.all
      @scenes = Scene.all
    end

  end
end
