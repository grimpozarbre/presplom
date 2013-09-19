class EtudiantsController < ApplicationController
    
  def index
    
  end
    
  
  def update
    test 'can connect to external sql server instance (bypassing ActiveRecord)' do
    result = fetch_rows
    assert_equal 6, result.count
    assert_equal "root", result.first["user_name"]
    end

    def fetch_rows
      client = TinyTds::Client.new(username: 'EINET\bi-service', password: 'VNes41&bI', host: 'EIBISQL', database: 'EIBISQL')
      client.execute("SELECT titre, naissance, origine, adresse, care_of, npa, ville, filiere, orientation, mode FROM [AGE_ETU_STAT_CUBE_ADMISSION]") # #AGE_ETU_STAT_CUBE_GLOBAL
    end
    
    
    sqlrequest = "INSERT INTO 'users'(idpersonne, nom, prenom, created_at, updated_at) VALUES (result.first['id_personne'],result.first['nom'],result.first['prenom'],'','') ;"
    
    
    redirect_to :action => :pages/home
  end
  
end


