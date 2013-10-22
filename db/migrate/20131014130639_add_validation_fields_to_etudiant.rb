class AddValidationFieldsToEtudiant < ActiveRecord::Migration
  def change
    add_column :etudiants, :vld_titre, :string
    add_column :etudiants, :vld_nom, :string
    add_column :etudiants, :vld_prenom, :string
    add_column :etudiants, :vld_naissance, :string
    add_column :etudiants, :vld_adresse, :string
    add_column :etudiants, :vld_care_of, :string
    add_column :etudiants, :vld_npa, :string
    add_column :etudiants, :vld_ville, :string
    add_column :etudiants, :vld_filiere, :string
    add_column :etudiants, :vld_orientation, :string
    add_column :etudiants, :vld_mode, :string
    add_column :etudiants, :vld_commentaires, :string
  end
  
  def up

  end

  
end













