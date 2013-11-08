 class Admin::UsersController < ApplicationController

  before_filter :require_user
  def index
    @users = User.where(as_user_type: 'User').all  # Tous les utilisateurs, exceptés les étudiants
  end
  
  def show
     @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
  end
  
  def create
    @user = User.new(params[:user].merge :as_user_type => 'User') # Création de l'utilisateur, et ajout de la valeur "User" dans l'attribut "as_user_type" 
    #binding.pry
    if @user.save 
      redirect_to admin_users_path #, :flash => { :success => 'Utilisateur cree avec succes.' }
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
      redirect_to admin_users_path, :flash => { :success => 'Utilisateur modifie avec succes.' }
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
      flash[:success] = "User has been deleted."
    end
    redirect_to admin_users_path
  end
  
end
