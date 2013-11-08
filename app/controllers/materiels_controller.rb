class Admin::MaterielsController < ApplicationController
  
  def index
    @materiels = Materiel.all
  end
  
  def show
    
  end
  
  def new
    #@materiel = Materiel.new
  end
  
end
