class Etudiant < ActiveRecord::Base
  include AASM
  #has_paper_trail #Défini que le modèle "Etudiant" utilise le gestionnaire de version
  
  inherits_from  :user, :class_name => 'User', :methods => true   #Modèle "Etudiant" hérite du modèle "user"
  
  attr_accessible :titre,
                  :naissance,
                  :origine,
                  :adresse,
                  :care_of,
                  :npa,
                  :ville,
                  :filiere,
                  :orientation,
                  :mode, 
                  :last_connected_at, 
                  :statut 
                  #, :aasm_state
  
  aasm do
    state :validating, :initial => true
    state :processing
    state :approved
    
    event :validate do      #Utilisateur se connecte sans approuver ses données
      transitions :from => :approved, :to => :validating   
    end
    
    event :process do       #Utilisateur a valide et/ou apporte des modifications a ses informations / Un message apparait lorsque l_utilisateur se connecte
      transitions :from => :validating, :to => :processing
    end
    
    event :approve do       #La secretaire a confirme que les donnees dans IS-Academia sont identiques a celles valide par l etudiant
      transitions :from => :processing, :to => :approved
    end
    
    def validating
      "Vos informations sont en attente de validation"
    end
    
    def processing
      "Vos information sont en cours de traitement"
    end
    
    def approved
      "Vos informations sont validees"
    end
    
  end
  
  def sync
    client = TinyTds::Client.new(username: 'username', password: 'secret', host: 'MyHost', database: 'MyDB')
    result = client.execute("SELECT * FROM [MyTable]")
    result.each do |row|
      Etudiant.create(:uid => row['username'], 
                      :idpersonne => row['id_personne'], 
                      :titre => row['politesse'], 
                      :naissance => row['date_naissance'], 
                      :nom => row['nom'], 
                      :prenom => row['prenom'], 
                      :email => row['email_ecole'])
    end
  end
  
  
  

end
