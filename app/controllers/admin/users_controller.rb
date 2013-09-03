class Admin::UsersController < ApplicationController

  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_path, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
 
    if @user.update_attributes(params[:user])
      redirect_to admin_users_path, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end
  
  #def destroy
    #User.find(params[:id]).destroy
    #@user.destroy
    #redirect_to admin_users_path, :flash => { :success => 'L\'utilisateur à été correctement effacé.' }
  #end
  
  def destroy
    if @user == current_user
      flash[:alert] = "You cannot delete yourself!"
    else
      User.find(params[:id]).destroy
      flash[:notice] = "User has been deleted."
    end
    redirect_to admin_users_path
  end
  
end
