class Etudiant < ActiveRecord::Base
  inherits_from :user, :methods => true
  
  attr_accessible :titre, :naissance, :origine, :adresse, :care_of, :npa, :ville, :filiere, :orientation, :mode, :last_connected_at
  
  

end
