
class EtudiantsController < ApplicationController
    require 'active_record'
    require "activerecord-import/base"
   # ActiveRecord::Import.require_adapter('SQLite3')
    
  def index
    
  end
  
  def create 
    # uniquement mode automatique
    #@etudiant = Etudiant.new
    etudiants = []
      10.times do |i| 
        etudiants << Etudiant.new(
        :nom =>  "Nom"+i)
      end
    Etudiant.import etudiants
  end 
    
  def update
    # 
   #  ici vient le code 
   
    test 'can connect to external sql server instance (bypassing ActiveRecord)' do
    result = fetch_rows
    assert_equal 6, result.count
    assert_equal "root", result.first["user_name"]
    end

    def fetch_rows
      client = TinyTds::Client.new(username: 'EINET\bi-service', password: 'VNes41&bI', host: 'EIBISQL', database: 'EIBISQL')
      result = client.execute("SELECT nom, prenom, titre, naissance, origine, adresse, care_of, npa, ville, filiere, orientation, ville FROM AGE_ETU_STAT_CUBE_ADMISSION")
      results_array = result.each(:symbolize_keys => true, :as => :array, :cache_rows => true, :empty_sets => true) do |rowset| end
    end
    
    #----------------------------------

    for i in (0..result.fields.length)
      printf("%14s", result.fields[i])
    end
    for j in (0...result.affected_rows)
      puts ""
        for i in (0...result.fields.length)
          printf("%14s",results[j].at(i))
        end
    end    





    redirect_to :action => :pages/home




  end

end


