class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to thoughts_url
    end
    @thoughts = Thought.all
  end
end
