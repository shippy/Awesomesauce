class ApplicationController < ActionController::Base
  protect_from_forgery
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
