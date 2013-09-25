class RemoveFieldsFromEtudiant < ActiveRecord::Migration
  def up
    remove_column :etudiants, :created_at
    remove_column :etudiants, :updated_at
  end

  def down
  end
end
