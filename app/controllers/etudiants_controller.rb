
class EtudiantsController < ApplicationController
    
  def index
    #@validating_etudiant = etudiant.validating
    #@processing_etudiant = etudiant.processing
    #@approved_etudiant = etudiant.approved
    
  end
  
  def create 
     @etudiant = Etudiant.new 
  end 
    
  def update
  
  end

end


