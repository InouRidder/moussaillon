class PagesController < ApplicationController

  def home
    @latest_products = Product.last(2)
    @recent_scenes = Scene.last_2
    @words = ["Tailor made", "Leather", "Useful", "Timeless","Top","of","the","range","Robust","Local","Taste","Shape","Carved","Beautiful","Hardwood","Noble","Stones","Perfect","Unique"]
  end

  def about
  end

  def contact
  end

end
