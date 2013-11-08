class ChangeNameOfNombre < ActiveRecord::Migration
  def up
    rename_column :materiel_etudiants, :nombre, :quantite
  end

  def down
  end
end
