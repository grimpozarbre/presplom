class ChangeAllVldColumnNameEtudiants < ActiveRecord::Migration
  def up
    change_table :etudiants do |t|
      t.rename :vld_nom, :old_nom
      t.rename :vld_prenom, :old_prenom
      t.rename :vld_naissance, :old_naissance
      t.rename :vld_adresse, :old_adresse
      t.rename :vld_care_of, :old_care_of
      t.rename :vld_npa, :old_npa
      t.rename :vld_ville, :old_ville
      t.rename :vld_filiere, :old_filiere
      t.rename :vld_orientation, :old_orientation
      t.rename :vld_mode, :old_mode
      t.rename :vld_commentaires, :old_commentaires
    end
  end

  def down
  end
end
