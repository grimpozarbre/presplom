class MaterielEtudiant < ActiveRecord::Base
   attr_accessible :quantite, :materiel_id, :etudiant_id
   
   belongs_to :etudiant
   belongs_to :materiel
   
   accepts_nested_attributes_for :etudiant
   accepts_nested_attributes_for :materiel
   
end



