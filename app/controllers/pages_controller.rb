require 'open-uri'
class PagesController < ApplicationController
  # def instahome
  #   # url = open("https://api.instagram.com/v1/users/self/media/recent/?access_token=3317896663.4c3b64b.b4e278d37aef4969b0d2a084380cd7d3").read
  #   # @rubyhash = JSON.parse(url)
  # end

  def home
    # url = open("https://api.instagram.com/v1/users/self/media/recent/?access_token=#{ENV['INSTAGRAM_TOKEN']}").read
    # @object =  JSON.parse(url)
    # @latest_products = Product.last(2)
    # @recent_scenes = Scene.last_2
    @words = ["Tailor made", "Leather", "Useful", "Timeless","Top","of","the","range","Robust","Local","Taste","Shape","Carved","Beautiful","Hardwood","Noble","Stones","Perfect","Unique"]
  end

  def about
  end

  def contact
  end

end
