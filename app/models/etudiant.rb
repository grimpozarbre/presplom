class Etudiant < ActiveRecord::Base
  has_paper_trail #Défini que le modèle "Etudiant" utilise le gestionnaire de version
  
  inherits_from :user, :class_name => 'User', :methods => true   #Modèle "Etudiant" hérite du modèle "user"
  
  attr_accessible :titre, :naissance, :origine, :adresse, :care_of, :npa, :ville, :filiere, :orientation, :mode, :last_connected_at, :statut
  
  #belongs_to :user  # 1 étudiant est suivi par un user (Prof. resp. TB)
  
  

end
