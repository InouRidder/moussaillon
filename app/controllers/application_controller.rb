class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception


  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  private

  def layout_by_resource
    "devise" if devise_controller?
  end

end
