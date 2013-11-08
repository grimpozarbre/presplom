class Materiel < ActiveRecord::Base
  attr_accessible :defaut, :description, :id, :nom, :type_materiel
  
  has_many :materiel_etudiants
  has_many :etudiants, :through => :materiel_etudiants
  accepts_nested_attributes_for :materiel_etudiants
  
 
end
