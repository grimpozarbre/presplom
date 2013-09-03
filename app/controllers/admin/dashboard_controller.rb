class Admin::DashboardController < ApplicationController
  
  before_filter :check_authorized
  
  def index
   # if current_user.has_role? :admin
   #   redirect_to '/dashboard#index'
   # else
   #   redirect_to 'http://www.google.com'
   # end
  end
  
  def check_authorized
    redirect_to root_path unless can? :admin, :all
  end

end
