class Admin::MaterielsController < ApplicationController
  
  def index
    @materiels = Materiel.all
  end
  
  def show
    @materiel = Materiel.find(params[:id])
  end
  
  def new
    @materiel = Materiel.new
  end
  
  def create
    @materiel = Materiel.new
    if @materiel.save 
      redirect_to admin_materiels_path #, :flash => { :success => 'Materiel cree avec succes.' }
    else
      render :action => 'new'
    end
  end
  
  def edit
    @materiel = Materiel.find(params[:id])
  end
  
  def update
    @materiel = Materiel.find(params[:id])
 
    if @materiel.update_attributes(params[:materiel])
      redirect_to admin_materiels_path, :flash => { :success => 'Materiel modifie avec succes.' }
    else
      render :action => 'edit'
    end
  end
  
  def destroy
      Etudiant.find(params[:id]).destroy
      flash[:success] = "Materiel a ete supprime."
      
      redirect_to admin_materiels_path
      
  end
  
end
