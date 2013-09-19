class AddFieldsToEtudiant < ActiveRecord::Migration
  def change
    add_column :etudiants, :statut, :string
  end
end
