class Admin::UsersController < ApplicationController

  #before_filter :authorize
  def index
    @users = User.all
  end
  
  def new
     @user = User.new
  end
  
end
