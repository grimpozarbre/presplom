class User < ActiveRecord::Base
  #acts_as_superclass   #méthode utilisée pour définir qu'un modèle peut être étendu (Multiple Table Inheritance)
  attr_accessible :uid, :nom, :prenom, :email, :departement, :created_at, :updated_at, :subtype, :role_ids
  has_and_belongs_to_many :roles  
  
  #has_many :etudiants   # 1 User (Prof_resp. TB) peux avoir plusieurs étudiants
  
  #has_many :tbs, through: :etudiants #  1 User (Prof_resp. TB) peux avoir plusieurs tb's par l'intermédiaire d'étudiant(s)
  
  
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  
  def self.create_with_omniauth(auth)  
    create! do |user|  
      user.id = auth["id"]  
      user.name = auth["user_info"]["name"]  
    end  
  end
  
end
  
