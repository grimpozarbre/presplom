class ChangeDateToDatetime < ActiveRecord::Migration
 change_table :etudiants do |t|  
  t.change :naissance, :datetime 
end
end
