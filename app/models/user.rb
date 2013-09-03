class User < ActiveRecord::Base
  
  has_and_belongs_to_many :roles  
  
  attr_accessible :uid, :nom, :prenom, :email, :departement, :role_ids
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  
  def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]
      user.id = auth["id"]  
      user.username = auth["username"] 
      user.name = auth["user_info"]["name"]  
    end  
  end
end
