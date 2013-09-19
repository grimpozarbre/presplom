class CreateEtudiants < ActiveRecord::Migration
  def change
    create_table :etudiants, :inherits => :user do |t|
      t.string :titre
      t.string :naissance
      t.string :origine
      t.string :adresse
      t.string :care_of
      t.string :npa
      t.string :ville
      t.string :filiere
      t.string :orientation
      t.string :mode
      t.datetime :last_connected_at
      t.timestamps
    end
  end
  
  def self.down
  #  drop_table :etudiants
  end
end