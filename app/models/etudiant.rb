class Etudiant < ActiveRecord::Base
  acts_as :user
  include AASM
  
  
  has_many :materiel_etudiants
  has_many :materiels, :through => :materiel_etudiants
  
  scope :never_connected, where(:last_connected_at => 'NULL') #Tous les etudiants qui ne se sont jamais connectes
  scope :all_change, where(:aasm_state => 'processing')   #Toutes les demandes de changement
  scope :all_change_approved, where(:aasm_state => 'approved')   #Toutes les corrections faites
  scope :all_change_pending, where(:aasm_state => 'processing')

  
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
                  :statut, 
                  :aasm_state,
                  :old_titre,
                  :old_nom,
                  :old_prenom,
                  :old_naissance,
                  :old_adresse,
                  :old_care_of,
                  :old_npa,
                  :old_ville,
                  :old_filiere,
                  :old_orientation,
                  :old_mode,
                  :commentaires,
                  :as_user_id
                  
  




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
 
  
end
