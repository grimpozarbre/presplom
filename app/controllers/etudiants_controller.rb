
class EtudiantsController < ApplicationController
  
  has_scope :last_connected_at, :type => :boolean 
   
    
  def index                       #Vue de tous les étudiants pour un utilisateur "User"
    @etudiants = nil
    #@etudiants = Etudiant.all
    #@etudiants_grid = initialize_grid(apply_scopes(Etudiant).all)
    
    #@etudiants_grid = initialize_grid(Etudiant)
    respond_to do |format|
      format.html
      format.json {
        @etudiants = Etudiant.find_by_sql('select * from users, etudiants where users.as_user_id = etudiants.user_id and users.as_user_type = "Etudiant"')
        render :content_type => 'application/json',
        :text => '{"aaData": ' + 
                        @etudiants.to_json() + '}' }  
    end
  end
    
  
  def show
    @etudiant = Etudiant.find(params[:id])
    #@titre = @etudiant.nom + " " + @etudiant.prenom
  end
  
  def edit
    @etudiant = Etudiant.find(params[:id])
  end
  
  def create 
    redirect_to etudiants_path
     #@etudiant = Etudiant.new 
  end 
    
  def update
    @etudiant = Etudiant.find(params[:id])
  end

end


