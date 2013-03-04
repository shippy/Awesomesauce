class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    thoughts_path
  end
end

class Citation
  @@counter = 0
  
  attr_accessor :url, :short, :long
  def initialize (url, short, long)
    @url = url
    @short = short
    @long = long
    
    @@counter = @@counter + 1
  end
  def cite_short
    return "(<a class=\"citation short_c\" href=\"" + url + "\">" + short + "</a>)"
  end
  def cite_long
    return "<a class=\"citation long_c\" href=\"" + url + "\">" + long + "</a>"
  end
end