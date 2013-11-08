class ModeleEmail < ActiveRecord::Base
  attr_accessible :id,
  				  :nom, 
  				  :description, 
  				  :contenu
end
