class HomeController < ApplicationController
  def index
    @recent_searches = user_signed_in? ? current_user.searches.order(created_at: :desc).limit(3) : []
  end  
end
