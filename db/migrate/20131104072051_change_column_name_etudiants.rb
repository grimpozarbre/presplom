class ChangeColumnNameEtudiants < ActiveRecord::Migration
  def up
    rename_column :etudiants, :vld_titre, :old_titre
    rename_column :etudiants, :vld_nom, :old_nom
    rename_column :etudiants, :vld_prenom, :old_prenom
    rename_column :etudiants, :vld_naissance, :old_naissancel
    rename_column :etudiants, :vld_adresse, :old_adresse
    rename_column :etudiants, :vld_care_of, :old_care_of
    rename_column :etudiants, :vld_npa, :old_npa
    rename_column :etudiants, :vld_ville, :old_ville
    rename_column :etudiants, :vld_filiere, :old_filiere
    rename_column :etudiants, :vld_orientation, :old_orientation
    rename_column :etudiants, :vld_mode, :old_mode
    rename_column :etudiants, :vld_commentaires, :old_commentaires
  end

  def down
  end
end
