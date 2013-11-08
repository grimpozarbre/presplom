
class EtudiantsController < ApplicationController
     
    
  def index                       #Vue de tous les étudiants pour un utilisateur "User"
    @etudiants = nil

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
  
  def neverconnected 
    @etudiants = Etudiant.neverconnected
    render 'index'
  end




  def sync
    client = TinyTds::Client.new(username: 'EINET\bi-service', password: 'VNes41&bI', host: 'EIBISQL', database: 'EIBISQL')

    if condition
      
    
    result = client.execute("SELECT * FROM [AGE_ETU_STAT_CUBE_DIPLOMANTS]")
    result.each do |row|
      Etudiant.create(:uid => row['username'], 
                      :idpersonne => row['id_personne'], 
                      :titre => row['politesse'], 
                      :naissance => row['date_naissance'], 
                      :nom => row['nom'], 
                      :prenom => row['prenom'], 
                      :email => row['email_ecole'],
                      :origine => row['commune_origine'],
                      :adresse => row['adresse1'],
                      :care_of => row['adresse2'],
                      :npa => row['npa_adresse'],
                      :ville => row['localite_adresse'],
                      :filiere => row['filiere'],
                      :orientation => row['orientation'],
                      :mode => row['mode_enseignement'])
    end
  end
end

  

end


