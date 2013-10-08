class User < ActiveRecord::Base
  acts_as_superclass   #méthode utilisée pour définir qu'un modèle peut être étendu (Multiple Table Inheritance)
  
  attr_accessible :uid,
                  :nom, 
                  :prenom, 
                  :idpersonne, 
                  :email, 
                  :departement, 
                  :created_at, 
                  :updated_at, 
                  :user_type, 
                  :role_ids
                  
  has_and_belongs_to_many :roles  
  
  
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
  
